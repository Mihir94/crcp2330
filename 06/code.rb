class Code

	DEST = {
		nil => '',
		'M' => '001',
		'D' => '010',
		'MD' => '011',
		'A' => '100',
		'AM' => '101',
		'AD' => '110',
		'AMD'=> '111'
	}

	COMP = {
		'0' => '0101010',
		'1' => '0111111',
		'-1' => '0111010',
		'D' => '0001100',
		'A' => '0110000',
		'!D' => '0001101',
		'!A' => '0110001',
		'-D' => '0001111',
		'-A' => '0110011',
		'D+1' => '0011111',
		'A+1' => '0110111',
		'D-1' => '0001110',
		'A-1' => '0110010',
		'D+A' => '0000010',
		'D-A' => '0010011',
		'A-D' => '0000111',
		'D&A' => '0000000',
		'D|A' => '0010101',
		'M' => '1110000',
		'!M' => '1110001',
		'-M' => '1110011',
		'M+1' => '1110111',
		'M-1' => '1110010',
		'D+M' => '1000010',
		'D-M' => '1010011',
		'M-D' => '1000111',
		'D&M' => '1000000',
		'D|M' => '1010101'
	}

	JUMP = {
		nil => '',
		'JGT' => '001',
		'JEQ'	=> '010',
		'JGE'	=> '011',
		'JLT'	=> '100',
		'JNE'	=> '101',
		'JLE' => '110',
		'JMP' => '111'
	}

	def process_instruction_1(dest_mnemonic, comp_mnemonic)
		bDest = dest(dest_mnemonic)
		bComp = comp(comp_mnemonic)
		bComp + bDest + '000'
	end
	
	def dest(mnemonic)
		bDest = DEST[mnemonic]
		bDest
	end

	def comp(mnemonic)
		bComp = COMP[mnemonic]
		bComp
	end

	def process_instruction_2(comp_mnemonic, jump_mnemonic)
		bComp = comp(comp_mnemonic)
		bJump = jump(jump_mnemonic)
		bComp + '000' + bJump
	end

	def jump(mnemonic)
		bJump = JUMP[mnemonic]
		return bJump
	end


end
