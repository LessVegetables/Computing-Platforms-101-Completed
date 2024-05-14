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


	ldi r0, -1
	ldi r1, oflow
	st r1, r0
	
	
	ldi r0, 0		# i
	ldi r1, n
	ld r1, r1
	#ldi r2, 255	# used for overflow detection
	ldi r3, 0		# total/res/ans
	
	
	while
		cmp r1, r0
	stays pl		
		ldi r2, 255
		sub r3, r2
		neg r2
		# <=> r2 = 255 - ans
		
		if
			cmp r2, r0	# if r1 < i — then its gonna overflow
		is pl
			# overflow
			# oflow = 1
			ldi r2, oflow
			ldi r1, 1
			st r2, r1
			# ans = 255
			ldi r3, 255
			break
		fi
		
		add r0, r3	# ans += i
		inc r0		# i++
	wend
	
	ldi r2, res
	st r2, r3


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
n:     dc 15    # replace this with your choice of unsigned number for testing
ENDINPUTS>

res:   ds 1    # one byte reserved for the (unsigned number) total
oflow: ds 1    # one byte to indicate whether or not an overflow has occurred
end

