img_rom_b_inst : img_rom_b PORT MAP (
		aclr	 => aclr_sig,
		address	 => address_sig,
		clock	 => clock_sig,
		rden	 => rden_sig,
		q	 => q_sig
	);
