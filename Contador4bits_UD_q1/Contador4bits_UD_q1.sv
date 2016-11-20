module Contador4bits_UD_q1(input logic resert, clock,
							output logic [3:0]saida);
							logic ciclo;
							
always_ff @(posedge clock)

	begin
	
	if (resert)
		begin
		saida <= 4'd0;
		ciclo <= 0;
		end
		
	else		
		if(ciclo == 0)
			if(saida == 4'd15)
				begin
				saida <= saida - 4'd1;
				ciclo <= 1;
				end
			else
				saida <= saida + 4'd1;
		else
			if(saida == 4'd0)
				begin
				saida <= saida + 4'd1;
				ciclo <= 0;
				end
			else
				saida <= saida - 4'd1;	
	end
endmodule