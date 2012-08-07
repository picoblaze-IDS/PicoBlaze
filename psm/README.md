README psm
==========

Files
-----
The assembly code for the PicoBlaze program can be found in the fsm.psm file.

The KCPSM3.EXE file is the assembler, and the other files are needed by the assembler to compile the assembly code into VHDL.

Compilation
-----------
In order to compile the assembly code, you need to launch a Windows command line (Windows key + R and type "cmd" without quotes in the input field).

You then need to navigate to where you extracted the project with the "cd" command (e.g. "cd Desktop\psm") and launch the assembler by typing the following command (without quotes): "KCPSM3.EXE fsm.psm".

You should read "KCPSM3 complete.", and a FSM.VHD file should have been generated.

    KCPSM3 successful.

    KCPSM3 complete.
