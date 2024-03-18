asect  0x00

# =================================
# INSERT YOUR CODE BELOW
# Executable instructions only
# No dc or ds pseudo-instructions
# Do not include a halt instruction: that has been done already (below)
# ---------------------------------------------------------------------




# =================================
# LEAVE THIS PART OF THE FILE ALONE
# Do not change the next five instructions: they must be the last five
# instructions executed by your program.
	ldi r1, a
	ldi r2, b
	ldi r3, c
	
	ld r1, r1
	ld r2, r2
	ld r3, r3
	
    push r3
    push r2
    push r1
    ldsa r0,0  # load the address of the current stack pointer into r0 for the robot
    halt       # Brings execution to a halt

# =================================
# DATA GOES BELOW
# We have set this up for you, but you will need to test your program by
# compiling and running it several times with different input data values
# (different values placed at address a)
# ---------------------------------------------------------------------

INPUTS>
ENDINPUTS>


a: dc 0b00000001
b: dc 0x02
c: dc 3

end



