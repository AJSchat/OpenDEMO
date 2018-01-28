# OpenDEMO
OpenDEMO is a SoF2MPSDK created to be compatible with SoF2 MP TEST, commonly
referred to as *demo* (hence the name). Next to modifying the code in such a way
that the netcode is fully compatible with MP TEST, it also tries to replicate
the original feel that comes with the version, such as leaning and jumping. Of
course, specific functionality unique to this version is already, or will also
be included.

Lots of progress has already been made, and in its current state OpenDEMO is
fully compatible with the *game* module. There is currently no support for the
*cgame*, *ui* or any of the *gametype* modules, and there are no plans the
original author will include them. If you want to see support for them,
please consider contributing to this project.

### Getting started
#### Compiling the game module
OpenDEMO can be built as QVM or DLL. QVMs are usually preferred on Q3-based
games due to their high portability cross-platform. This is no issue for MP
TEST: the demo was only released on Windows. Therefore it's probably *"better"*
to compile the module as DLL to gain an extra speedboost in addition to
debugging the loaded DLL modules more easily. QVMs on the other hand are easier
to build and deploy.

If you want to build the game module as **QVM**, and you're familiar with
building Mods for SoF2MP using the SDK, the process is pretty much the same.
Make sure the binutils are in your PATH environment variable and you're ready to
compile. There are three batch (.bat) files in the game directory that can be
used to build, two for MP TEST and one that builds the original v1.00 version:

* *game - v1.02t (MP TEST) - clean.bat* - Builds the game module for v1.02t.
* *game - v1.02t (MP TEST) - OpenDEMO.bat* - Builds the game module for v1.02t,
and enables extra OpenDEMO specific code, such as showing the motd to clients
when they enter the server.
* *game - v1.00 (Full).bat* - Builds the game module for v1.00.

If you want to build the game module as **DLL**, you can use the included
game.sh file to build with MinGW or MinGW-w64, in conjunction with MSYS. You can
also use this file to build the game module cross platform, from e.g. Linux,
FreeBSD or macOS. Having MinGW or MinGW-w64 installed is also prerequisite for
compiling cross-platform. Visual Studio on Windows is also supported using the
included solution and/or project files.

The following DLL compilation method assumes you're building using MSYS/MinGW32.
This is how you compile the game module as DLL in interactive mode, the script
will ask you what you want to build:

```bash
$ ./game.sh
Enter the type of build:
1: Release build - MP TEST (v1.02t) - Clean
2: Release build - MP TEST (v1.02t) - With OpenDEMO additions
3: Release build - Full (v1.00) - Clean
Enter your choice and press [ENTER]:
```

The script will detect if being ran from a Windows host or something else,
and adjust the compiler and linker accordingly.

For more control, you may also pass arguments to the script. The script
supports the following parameters:

* -cc: Specifies compiler name (default: "gcc" on Windows,
"i686-w64-mingw32-gcc" everywhere else).
* -l: Specifies linker name (default: "gcc" on Windows, "i686-w64-mingw32-gcc"
everywhere else).
* -c: Compile choice, either 1, 2, or 3.
* -o: Output filename.

The following *optional* parameters may also be specified:

* -v: Verbose mode, will print e.g. full compile lines.
* -noclear: Don't clear upon selecting choice.

Here's an example of compiling the game module using parameters:

```bash
$ ./game.sh -cc gcc -l gcc -c 2 -o /c/MPTEST/OpenDEMO/sof2mp_gamex86.dll
```

If compilation fails and you didn't alter anything in the code yet, this is
usually something in the runtime not correctly installed or set. Verbose output
is always logged to the *compile_log* file.

#### Running the game module
Getting the QVM or DLL to run is a little trickier. Using either method you will
need a patched executable that removes the restricted demo mode from the
executable. This allows modifications to the assets.pk3 file and allows loading
files located outside .pk3 files. It also enables files in a separate fs_game
directory, similar to how mods are distributed and used on v1.00.

You can download this executable by going to the *Downloads* page of this
repository and downloading the *patch - no game dir restrictions.zip* file.
You need the *SoF2MP-Test.patched.exe* file from the archive to run SoF2MP-Test
without restrictions.

### Extending existing projects to MP TEST using OpenDEMO
This SDK is built in such a way that porting MP TEST specific code to your own
SoF2MP mod is easy. Both the original **v1.00 code** and the **new MP TEST
code** are included in the code, separated by conditional inclusions and
exclusions. Finding the differences and getting your SoF2MP Mod to support more
than one SoF2MP version is easy this way.

When the **_DEMO** preprocessor directive is defined during compile-time,
MP TEST specific code will be included and v1.00 specific code will be excluded.

Here's an example of how a CVAR only present in MP TEST will be included:
```c
#ifdef _DEMO
{ &g_timeextensionmultiplier,		"g_timeextensionmultiplier",	"0", 0, 0.0, 0.0, 0, qfalse },
#endif // _DEMO
```

Or an example of something only present in v1.00 and not in MP TEST:
```c
#ifndef _DEMO
trap_SetConfigstring ( CS_PICKUPSDISABLED, "1" );
#endif // not _DEMO
```

Or both present in MP TEST and v1.00 but simply different between versions:
```c
#ifndef _DEMO
	#define	GAME_VERSION		"sof2mp-1.00"
#else
	#define	GAME_VERSION		"sof2mp-1.02t"
#endif // not _DEMO
```

### OpenDEMO specific code
There's another preprocessor directive specific to this project,
namely **_OPENDEMO**. This preprocessor directive includes OpenDEMO specific
code not relevant to the original SDK, such as showing the OpenDEMO motd at
client start. When you're porting MP TEST code over to an existing project, you
probably don't want this code.

### License
You may use the code as you see fit, no GPL or any other license will be applied
to the code in this repository, much like the SDK releases of Raven Software.
The initial release of this code is offered as a courtesy for the demo community
by the developers of 1fx. Mod.
