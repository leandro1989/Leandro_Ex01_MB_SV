module Contador4bits_UD_q1(input logic reset, clock,
							output logic [3:0]saida);
							logic ciclo;
							
always_ff @(posedge clock or posedge reset)

	begin
	
	if (reset)
		begin
		saida <= 4'd0;
		ciclo <= 0;
		end
		
	else		
		if(ciclo == 0)
			if(saida == 4'd14)
				begin
				saida <= saida + 4'd1;
				ciclo <= 1;
				end
			else
				saida <= saida + 4'd1;
		else
			if(saida == 4'd1)
				begin
				saida <= saida - 4'd1;
				ciclo <= 0;
				end
			else
				saida <= saida - 4'd1;	
	end
endmodule