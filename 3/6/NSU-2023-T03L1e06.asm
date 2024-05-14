asect  0x00

# =================================
# INSERT YOUR CODE BELOW
# Executable instructions only
# No dc or ds pseudo-instructions
# Do not include a halt instruction: that has been done already (below)
# ---------------------------------------------------------------------

	ldi r0, 0
	ldi r1, pos
	st r1, r0
	ldi r1, neg
	st r1, r0
	ldi r1, zer
	st r1, r0




	ldi r0, content
	
	ldi r1, length
	ld r1, r1
	dec r1
	
	add r1, r0
	
	while
		tst r1
	stays pl
		ld r0, r2
		if
			tst r2
		is mi
			# <0
			ldi r3, neg
			ld r3, r3
			inc r3
			
			ldi r2, neg
			st r2, r3
		else
			if 
				tst r2
			is eq
				# 0
				ldi r3, zer
				ld r3, r3
				inc r3
			
				ldi r2, zer
				st r2, r3
			else
				# >0
				ldi r3, pos
				ld r3, r3
				inc r3
			
				ldi r2, pos
				st r2, r3
			fi				
		fi
		dec r1
		dec r0
	wend
	



# =================================
# LEAVE THIS PART OF THE FILE ALONE
# Do not change the next two instructions: they must be the last two
# instructions executed by your program.
    ldi r0, pos  # Loads the start address of your result into r0 for the robot
    ldi r1, neg
	ldi r2, zer
	halt         # Brings execution to a halt

# =================================
# DATA GOES BELOW
# We have set this up for you, but you will need to test your program by
# compiling and running it several times with different input data values
# (different arrays of numbers)
# ---------------------------------------------------------------------

INPUTS>
length:  dc 5          # the length of the array (between 1 and 10)
content: dc 2, 0, -3, 4, -9, 0, 7, 88, -92, 18
ENDINPUTS>
pos: ds 1 # 1 byte each for the three result values
neg: ds 1
zer: ds 1
end

