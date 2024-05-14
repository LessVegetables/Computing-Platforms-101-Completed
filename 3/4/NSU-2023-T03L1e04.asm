asect  0x00

# =================================
# INSERT YOUR CODE BELOW
# Executable instructions only
# No dc or ds pseudo-instructions
# Do not include a halt instruction: that has been done already (below)
# ---------------------------------------------------------------------

	ldi r0, content
	
	ldi r1, n
	ld r1, r1
	
	ldi r2, 1
	
	while
		tst r1
	stays nz
		st r0, r2
		inc r0
		inc r2
		dec r1
	wend
	
	


# =================================
# LEAVE THIS PART OF THE FILE ALONE
# Do not change the next two instructions: they must be the last two
# instructions executed by your program.
    ldi r0, content  # Loads the address of your result into r0 for the robot
    halt            # Brings execution to a halt

# =================================
# DATA GOES BELOW
# We have set this up for you, but you will need to test your program by
# compiling and running it several times with different input data values
# (different unsigned numbers placed at addresses x and y)
# ---------------------------------------------------------------------

INPUTS>
n:       dc 12   # replace this with your choice of unsigned number for testing
ENDINPUTS>

content: ds 15  # 15 bytes reserved for the content of the array
end

