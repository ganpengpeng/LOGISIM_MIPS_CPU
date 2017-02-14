.text
addi $s0,$zero,1
addi $s1,$zero,1
srav $s0,$s0,$s1
addi $s1,$s1,3
srav $s0,$s0,$s1
sltiu $s0,$s1,1
addi $s1,$zero,0
sltiu $s0,$s1,1
bgez_test:
addi $s1,$zero,3
addi $s0,$zero,0
sb $s1,0($s0)
sb $s1,1($s0)
sb $s1,2($s0)
sb $s1,3($s0)
sb $s1,4($s0)
addi $s0,$zero,-1
bgez $s0,bgez_test
addi $s0,$zero,0
bgez $s0,bgez_test
