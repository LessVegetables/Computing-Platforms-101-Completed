asect  0x00

# =================================
# INSERT YOUR CODE BELOW
# Executable instructions only
# No dc or ds pseudo-instructions
# Do not include a halt instruction: that has been done already (below)
# ---------------------------------------------------------------------

# num = 0
# total = 0
# ov = -1
# while (num <= N)
# {
# 	total = total + num
#	if an oveflow occurs
#	{
#		ov = +1
#		total = 255
#		break
#	}
#	num = num + 1
# }
# store total
# store ov


	ldi r0, 0		# total/res
	ldi r1, 255		# overflow
	
	if
		cmp r1 r0
	is mi
		neg r1
	fi
	
	ldi r2, n
	ld r2, r2
	
	ldi r3, 0		# num
	
	while
		cmp r2, r3
	stays pl
		add r3, r0
		
		if
			cmp r3, r1
		is z
			ldi r1, 1
			ldi r0, 255
			ldi r3, n
			ld r3, r3
		fi
		
		inc r3
	wend
	
	ldi r3, res
	st r3, r0
	
	ldi r3, 255
	if
		cmp r3, r1
	is z
		ldi r1, -1
	fi
	
	ldi r3, oflow
	st r3, r1
	


# =================================
# LEAVE THIS PART OF THE FILE ALONE
# Do not change the next two instructions: they must be the last two
# instructions executed by your program.
    ldi r0, res  # Loads the address of your result into r0 for the robot
    ldi r1, oflow
	 halt         # Brings execution to a halt

# =================================
# DATA GOES BELOW
# We have set this up for you, but you will need to test your program by
# compiling and running it several times with different input data values
# (different unsigned numbers placed at address n)
# ---------------------------------------------------------------------

INPUTS>
n:     dc 0b01111111    # replace this with your choice of unsigned number for testing
ENDINPUTS>

res:   ds 1    # one byte reserved for the (unsigned number) total
oflow: ds 1    # one byte to indicate whether or not an overflow has occurred
end

