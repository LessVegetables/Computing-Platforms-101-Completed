asect  0x00

# =================================
# INSERT YOUR CODE BELOW
# Executable instructions only
# No dc or ds pseudo-instructions
# Do not include a halt instruction: that has been done already (below)
# ---------------------------------------------------------------------

	ldi r1, a
	ld r1, r1
	
	ldi r2, b
	ld r2, r2
	
	ldi r0, ans
	
	if
		cmp r1, r2
	is pl
		st r0, r1
	else
		st r0, r2
	fi
	
	ld r0, r1
	
	ldi r2, c
	ld r2, r2
	
	if
		cmp r1, r2
	is pl
		st r0, r1
	else
		st r0, r2
	fi
	


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
# (different bit-strings placed at addresses a, b and c)
# ---------------------------------------------------------------------

INPUTS>
a:    dc -18   # replace these three numbers
b:    dc 9     # by your choice of integers
c:    dc 5     #  for testing purposes
ENDINPUTS>

ans:  ds 1     # one byte reserved for the result
end

