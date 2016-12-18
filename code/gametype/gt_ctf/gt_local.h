// Copyright (C) 2001-2002 Raven Software.
//
// gt_local.h -- local definitions for gametype module

#include "../../game/q_shared.h"
#include "../gt_public.h"
#include "../gt_syscalls.h"

typedef struct gametypeLocals_s
{
	int		time;

	int		redFlagDropTime;
	int		blueFlagDropTime;

	int		flagReturnSound;
	int		flagTakenSound;
	int		flagCaptureSound;

	int		redCaptureEffect;
	int		blueCaptureEffect;

} gametypeLocals_t;

extern	gametypeLocals_t	gametype;





