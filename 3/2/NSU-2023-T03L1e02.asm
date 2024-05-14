asect  0x00

# =================================
# INSERT YOUR CODE BELOW
# Executable instructions only
# No dc or ds pseudo-instructions
# Do not include a halt instruction: that has been done already (below)
# ---------------------------------------------------------------------

	ldi r0, 0
	
	ldi r1, x
	ld r1, r1
	
	ldi r2, y
	ld r2, r2
	
	
	while
		cmp r1, r2
	stays pl
		inc r0
		
		sub r2, r1
		neg r1
	wend
	
	ldi r3, quot
	st r3, r0
	
	ldi r3, remain
	st r3, r1
	
	

	

# =================================
# LEAVE THIS PART OF THE FILE ALONE
# Do not change the next two instructions: they must be the last two
# instructions executed by your program.
    ldi r0, quot  # Loads the address of your result into r0 for the robot
    ldi r1, remain
    halt          # Brings execution to a halt

# =================================
# DATA GOES BELOW
# We have set this up for you, but you will need to test your program by
# compiling and running it several times with different input data values
# (different unsigned numbers placed at addresses x and y)
# ---------------------------------------------------------------------

INPUTS>
x:      dc 10   # replace these with your choice
y:      dc 25    # of unsigned numbers for testing
ENDINPUTS>

out: ds 1    # one byte reserved for the remainder
end

