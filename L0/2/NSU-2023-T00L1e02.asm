asect 0x00

# =================================
# LEAVE THIS PART OF THE FILE ALONE
# Do not change the next two instructions: they must be the last two
# instructions executed by your program.
	ldi r0, a    # Loads the address of your result into r0 for the robot
	ldi r1, b
	ldi r2, c
	ldi r3, d
	halt         # Brings execution to a halt

# =================================
# DATA GOES BELOW
# Just add here the data definitions as instructed.
# (different values, starting with address a)
# ---------------------------------------------------------------------
INPUTS>
ENDINPUTS>
a: dc 13
b: dc 0x45
c: dc 0b11001101
d: dc "A"

end



