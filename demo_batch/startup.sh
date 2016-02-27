
#!/bin/sh
# -*- coding: undecided-unix;-*-
export SOPC_KIT_NIOS2=/opt/altera/15.1/nios2eds

"$SOPC_KIT_NIOS2/nios2_command_shell.sh" nios2-download /home/herman/C5G_Designs/C5G_drawbot_OSHBoard/software/drawbotcode/Apps/DrawbotLine1/DrawbotLine1.elf -c 1 -r -g
 
