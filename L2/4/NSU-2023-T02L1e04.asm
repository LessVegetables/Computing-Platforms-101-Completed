asect  0x00

# =================================
# INSERT YOUR CODE BELOW
# Executable instructions only
# No dc or ds pseudo-instructions
# Do not include a halt instruction: that has been done already (below)
# ---------------------------------------------------------------------

#if mem[a] contains 0
#  mem[ans] = -(mem[x])

#if mem[a] contains 1
#  mem[ans] = mem[x] + mem[y]

#if mem[a] contains 2
#  mem[ans] = mem[y] - mem[z]

	ldi r1, a
	ld r1, r1
	
	ldi r0, ans
	
	if
		tst r1
	is z
		ldi r2, x
		ld r2, r2
		neg r2
		st r0, r2
	else
		ldi r3, 1
		if
			cmp r1, r3
		is eq
			ldi r2, x
			ld r2, r2
			ldi r3, y
			ld r3, r3
			
			add r2, r3
			
			st r0, r3
		else
			ldi r3, 2
			if
				cmp r1, r3
			is eq
				ldi r2, y
				ld r2, r2
				ldi r3, z
				ld r3, r3
				
				sub r2, r3
				
				st r0, r3
			fi
		fi
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
# (different bit-strings placed at addresses a, x, y and z)
# ---------------------------------------------------------------------

INPUTS>
a:    dc 1   # replace these three numbers
x:    dc 4     # by your choice of integers
y:    dc 14     #  for testing purposes
z:    dc -14
ENDINPUTS>

ans:  ds 1     # one byte reserved for the result
end

