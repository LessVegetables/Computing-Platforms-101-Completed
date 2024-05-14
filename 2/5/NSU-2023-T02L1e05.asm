asect  0x00

# =================================
# INSERT YOUR CODE BELOW
# Executable instructions only
# No dc or ds pseudo-instructions
# Do not include a halt instruction: that has been done already (below)
# ---------------------------------------------------------------------

#if (mem[x] + 5) geq mem[y]
#  mem[ans] = 3 * mem[x]

#else
#  mem[ans] = 7 + mem[z] - (2 * mem[y])

	ldi r1, x
	ld r1, r1
	
	ldi r2, 5
	
	add r2, r1
	
	ldi r2, y
	ld r2, r2
	
	ldi r0, ans
	
	if
		cmp r1, r2
	is pl
		ldi r1, x
		ld r1, r1
		ldi r2, x
		ld r2, r2
		
		add r1, r2
		add r1, r2
		
		st r0, r2
	else
		ldi r1, 7
		
		ldi r2, z
		ld r2, r2
		
		ldi r3, y
		ld r3, r3
		
		add r2, r1
		neg r1
		add r3, r1
		add r3, r1
		neg r1
		
		st r0, r1
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
# (different bit-strings placed at addresses x, y and z)
# ---------------------------------------------------------------------

INPUTS>
x:    dc -6    # replace these three numbers
y:    dc 5     # by your choice of integers
z:    dc 3     #  for testing purposes
ENDINPUTS>

ans:  ds 1     # one byte reserved for the result
end

