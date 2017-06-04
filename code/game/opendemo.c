// Copyright (C) 2017 Boe!Man.
//
// opendemo.c - Special file embedded when server is built with the _OPENDEMO preprocessor definition. Used in test OpenDEMO builds.

#ifdef _OPENDEMO
#include "g_local.h"

/*
===================
opendemo_showMotd
2017-06-02 - 5:05 PM

Shows the motd to the
newly entered player.
===================
*/

void opendemo_showMotd(gentity_t *ent)
{
	char    motd[1024];

	Q_strncpyz(motd,
		"Open^eDEMO^7 - built on " __DATE__ "\n" \
		"Developed by ^GBoe!Man\n" \
		"A SoF2MPSDK made compatible with MP TEST\n\n" \
		"This server runs an experimental build.\n" \
		"Lots of stuff is still in development,\n" \
		"such as movement and hitreg.\n\n" \
		"Please e-mail findings to ^Zboe@1fxmod.org",
		sizeof(motd));

	trap_SendServerCommand(ent-g_entities, va("cp \"@%s\n\"", motd));
}
#endif // _OPENDEMO
