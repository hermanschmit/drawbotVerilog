
#!/bin/sh
# -*- coding: undecided-unix;-*-

"$SOPC_KIT_NIOS2/nios2_command_shell.sh" nios2-download ./Drawbot2_real1.elf -c 1 -r -g
 
python /home/herman/PycharmProjects/fpgadrawbot/CannyProg.py $1 out.png out.bin

"$SOPC_KIT_NIOS2/nios2_command_shell.sh" system-console --cli --rc_script=./console0.tcl out.bin
