asect  0x00

# =================================
# INSERT YOUR CODE BELOW
# Executable instructions only
# No dc or ds pseudo-instructions
# Do not include a halt instruction: that has been done already (below)
# ---------------------------------------------------------------------

	ldi r0, content
	
	ldi r1, length
	ld r1, r1
	dec r1
	
	add r1, r0
	
	while
		tst r1
	stays ne
		ld r0, r2
		if
			tst r2
		is mi
			neg r2
			st r0, r2
		fi
		dec r1
		dec r0
	wend
	
	ld r0, r2
	if
		tst r2
	is mi
		neg r2
		st r0, r2
	fi
	


# =================================
# LEAVE THIS PART OF THE FILE ALONE
# Do not change the next two instructions: they must be the last two
# instructions executed by your program.
    ldi r0, content  # Loads the start address of your result into r0 for the robot
    halt             # Brings execution to a halt

# =================================
# DATA GOES BELOW
# We have set this up for you, but you will need to test your program by
# compiling and running it several times with different input data values
# (different arrays of numbers)
# ---------------------------------------------------------------------

DATA>
length:  dc 5          # the length of the array (between 1 and 10)
content: dc -127, 0, -3, 4, -9, -1, 7, 88, -92, 18
ENDDATA>
end

