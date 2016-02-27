#!/bin/sh
# -*- coding: undecided-unix;-*-
export SOPC_KIT_NIOS2=/opt/altera/15.1/nios2eds

"$SOPC_KIT_NIOS2/nios2_command_shell.sh" system-console --cli --rc_script=./console0.tcl $1
