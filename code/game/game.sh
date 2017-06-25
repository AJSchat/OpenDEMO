#!/bin/bash

# *** OpenDEMO compilation script ***
#
# This script allows you to compile OpenDEMO as DLL, for WIN32, on all major
# platforms. MP TEST (v1.02t) and Full (v1.00) are both supported by this script
# and can be selected to build. Command line arguments are supported for cross
# compilation.
#
# Without arguments, the script will always default to building OpenDEMO for
# v1.02t, clean, without OpenDEMO additions.
#
# Parameters are supported, all of the following parameters must be specified if
# building using parameters: 
# -cc: Specifies compiler name (default: "gcc" on Windows,
#      "i686-w64-mingw32-gcc" everywhere else).
# -l: Specifies linker name (default: "gcc" on Windows,
#      "i686-w64-mingw32-gcc" everywhere else).
# -c: Compile choice, either 1, 2, or 3.
# -o: Output filename.
#
# Optional parameters:
# -v: Verbose mode, will print e.g. full compile lines.
# -noclear: Don't clear upon selecting choice.
#
# When parameters are used, no questions are asked and the script will continue
# with the given parameters. If mandatory parameters are missing, the script
# will break and throw an error.
#
# --- Boe!Man 6/23/17 - 6:34 PM

# Enable aliases.
shopt -s expand_aliases

# The compile options relevant for all builds are noted here.
buildoptions="-O2 -DQAGAME -D_SOF2"

# Global variables.
compiler=""
linker=""
count=0
verbose=false
noclear=false
full=false
outfile="sof2mp_gamex86.dll"

# Link the Mod based on the build type (default is without any symbols).
strip="-s"
buildtype=""

# First, we detect if we're manually building the game module or if we should
# automatically start determining what to build.
numargs=$#
if [ $numargs -gt 0 ]; then
    choice=""
    outfile=""

    # Arguments are used. Parse them.
    for ((i=1 ; i <= numargs ; i++))
    do
        if [ $1 == "-v" ]; then
            # Verbose mode.
            verbose=true
        elif [ $1 == "-noclear" ]; then
			# Don't clear, mostly used in auto mode.
			noclear=true
        fi

        if [ $[$#-1] -lt 1 ] || [[ $2 = "-"* ]]; then
            shift
            continue
        fi

        if [ $1 == "-cc" ]; then
            # Compiler.
            compiler=$2
        elif [ $1 == "-c" ]; then
            # Choice.
            choice=$2
        elif [ $1 == "-o" ]; then
            # Output file.
            outfile=$2
        elif [ $1 == "-l" ]; then
            # Linker.
            linker=$2
        fi

        # Advance argument.
        shift
    done

    # Check arguments specified, they must meet the specified requirements.
    if [[ $outfile == "" ]] || [[ $compiler == "" ]] || [[ $linker == "" ]] || [[ $choice -eq 0 ]]; then
        echo "Not all arguments were specified! Exiting now.."
        exit 1
    fi
else
    # Auto detection.

    # Properly detect MSYS environment (Windows operating system).
    if [[ `uname -a` == *"Msys"* ]] && [[ `uname -a` == "MINGW"* ]]; then
        compiler="gcc"
        linker="gcc"
    else
        # Cross complication.
        compiler="i686-w64-mingw32-gcc"
        linker="i686-w64-mingw32-gcc"
    fi

    # Get the type of build the user wants to build.
    echo "Enter the type of build:"
    echo "1: Release build - MP TEST (v1.02t) - Clean"
    echo "2: Release build - MP TEST (v1.02t) - With OpenDEMO additions"
    echo "3: Release build - Full (v1.00) - Clean"
    echo -n "Enter your choice and press [ENTER]: "
    read choice
fi

# Properly detect MSYS environment (Windows operating system), again, to use
# clear later on.
if [[ `uname -a` == *"Msys"* ]] && [[ `uname -a` == "MINGW32"* ]]; then
    alias clear="cls"
fi

m32=false
# Make sure we're building a 32 bit binary.
if [[ `$compiler -dumpmachine` == "x86_64"* ]]; then
    m32=true
    buildoptions="$buildoptions -m32"
fi

# Parse choice.
if [ $choice == "1" ]; then
    buildoptions="$buildoptions $strip -DNDEBUG -D_DEMO"
    buildtype="Release build - MP TEST (v1.02t) - Clean"
elif [ $choice == "2" ]; then
    buildoptions="$buildoptions -DNDEBUG -D_DEMO -D_OPENDEMO"
    buildtype="Release build - MP TEST (v1.02t) - With OpenDEMO additions"
elif [ $choice == "3" ]; then
    buildoptions="$buildoptions -DNDEBUG"
    buildtype="Release build - Full (v1.00) - Clean"
    full=true
else
    echo "Invalid choice specified, exitting.."
    exit 1
fi

# Summarize build environment and choices.
if [ $noclear == false ]; then
	clear
fi
printf "\e[00;36mPre-build summary\e[00m\n"
printf "=====================================================\n"
printf "\e[00;33m%-25s \e[00;35m%s\e[00m\n" "Build type" "$buildtype"
printf "\e[00;33m%-25s \e[00;35m%s\e[00m\n" "Output file" "$outfile"
printf "\e[00;33m%-25s \e[00;35m%s\e[00m\n" "Target platform" "WIN32"
printf "\n"
printf "\e[00;36mMain compilation & linking\e[00m\n"
printf "=====================================================\n"

buildoptions="$buildoptions -c"

# Get the *.c file count.
cFileCount=`ls -l *.c | wc -l`
# Remove whitespace.
cFileCount="$(echo -e "${cFileCount}" | sed -e 's/^[[:space:]]*//')"

# Clean up compile_log file and already produced DLL.
rm -f compile_log
rm -f $outfile

# Compile the game module.
function compile {
    padding=""

    # Increase counter.
    count=$((count+1))

    # Convert .c to .o.
    oFile="${1/.c/.o}"

    # Calculate the percentage in the process.
    percentage=$(printf '%i %i' $count $cFileCount \
        | awk '{ pc=100*$1/$2; i=int(pc); print (pc-i<0.5)?i:i+1 }')
    percentage=$((10#$percentage)) # Convert to int.

    # Calculate padding based on percentage.
    if [ $percentage -lt 10 ]; then
        padding="  "
    elif [ $percentage -lt 100 ]; then
        padding=" "
    fi

    # Add .o file to the linkfiles.
    linkfiles="$linkfiles $oFile"

    # Compile the actual file.
    if [ $verbose == true ]; then
        echo $compiler $2 $1 -o $oFile 2>> compile_log
    else
        echo -e "\e[00;33m[$padding$percentage%] \e[00;35mBuilding $1 -> $oFile\e[00m"
    fi
    $compiler $2 $1 -o $oFile 2>> compile_log
}

linkfiles=""
echo "Now compiling (verbose output to compile_log file).."
for cFile in *.c
do
    compile $cFile "$buildoptions"
done

# Link the Mod.
printf "Now linking the target file.. "
if [ $m32 == true ]; then
    m32b="-m32"
else
    m32b=""
fi

$linker $m32b $strip -shared $linkfiles -static -static-libgcc -o $outfile 2>> compile_log

printf "done!\n\n"
printf "\e[00;36mChecking end-result\e[00m\n"
printf "=====================================================\n"

# Now check if the output file was indeed created..
if [ -f $outfile ]; then
    echo -e "Compiling the Mod was \e[00;32msuccessfull\e[00m!"

    if [ -s "compile_log" ]; then
        echo -e "Some \e[00;33mwarnings\e[00m did occur."
    else
        echo "No warnings occured."
    fi
else
    echo -e "Compiling the Mod \e[00;31mfailed\e[00m!"
    echo "Please check the compile_log file for more information.."
fi

# Clean up some files..
rm -rf *.o

# Done!
printf "\n"
exit 0
