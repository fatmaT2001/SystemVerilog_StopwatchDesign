module counter
	(
	input logic clk, r,
	input logic s ,
	input logic l ,
	input logic m,
	input logic  [6:0]num,
	output logic [1:0]q,
	output logic rstn,
	output logic [6:0]fnum

	);
	//assign num= 7'b0000101;
	typedef enum {up , down , add5, stop,reset} state_type; 
	state_type state_reg , state_next ;
	always_ff @(posedge clk, posedge r)
	if (r) 
		state_reg <= reset ;
	else
		state_reg <= state_next ;
always_latch
	case (state_reg)
		reset:
		begin
			
			rstn=1;
			if ( r==0 &l==0 & s==1 & m==0)
				state_next = down;
			else if(r==0 &l==0 & s==1 & m==1)
				state_next = up;
			else if(r==0 & l==0 &  s==0)
				state_next = stop;
			else if(r==0 &l==1 )
				state_next = add5;	
			else state_next=reset;	
		end
		add5:
		begin	
			rstn=0;
			fnum=num+5;
			if (r==0 & l==0 & s==1 & m==0)
				state_next = down;
			else if( r==0 &l==0 & s==1 & m==1)
				state_next = up;
			else if( r==0 &l==1 )
				state_next = add5;
			else state_next=reset;
		end
		up:
		begin
			rstn=0;
			fnum=num;
			q=2'b10;
			if( r==0 &l==1 )
				state_next = add5;
			else if(r==0 & s==0 & l==0)
				state_next = stop;
			else if(r==1)
				state_next=reset;
			else state_next=up;
		 end
		down:
		begin
			rstn=0;
			q=2'b00;
			fnum=num;
			if(r==0 & l==1 )
				state_next = add5;
			else if( r==0 & s==0 & l==0)
				state_next = stop;
		else if(r==1)
				state_next=reset;
		else state_next=down;
		end
		stop:
		begin
			rstn=0;
			fnum=num;
			q=2'b11;
			if (r==0 & l==0 & s==1 & m==0)
				state_next = down;
			else if(r==0 &l==0 & s==1 & m==1)
				state_next = up;
			else if(r==0 &s==0)
				state_next = stop;
			else if(r==0 &l==1 )
				state_next = add5;	
			else state_next=reset;	
		end		
		default: 
			state_next = reset;
	endcase
endmodule