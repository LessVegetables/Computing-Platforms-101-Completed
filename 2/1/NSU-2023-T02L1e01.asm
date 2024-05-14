asect  0x00

# =================================
# INSERT YOUR CODE BELOW
# Executable instructions only
# No dc or ds pseudo-instructions
# Do not include a halt instruction: that has been done already (below)
# ---------------------------------------------------------------------

	ldi r1, a
	ld r1, r1
	
	if
		tst r1
	is mi
		neg r1
	fi
	
	ldi r2, ans
	st r2, r1


# =================================
# LEAVE THIS PART OF THE FILE ALONE
# Do not change the next two instructions: they must be the last two
# instructions executed by your program.
    ldi r0, ans  # Loads the address of your result into r0 for the robot
    halt         # Brings execution to a halt

# =================================
# DATA GOES BELOW
# We have set this up for you, but you will need to test your program by
# compiling and running it several times with different input data values
# (different integers placed at address a)
# ---------------------------------------------------------------------

INPUTS>
a:    dc  1   # replace -18 by your choice of integers for testing
ENDINPUTS>

ans:  ds 1      # one byte reserved for the result
end

