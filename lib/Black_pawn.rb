class BlackPawn
	def initialize(pos_x,pos_y)
		@pos_x=pos_x
		@pos_y=pos_y
	end

	def mov?(dst_x,dst_y)
	 	dx = (dst_x - @pos_x).abs
    	dy = (dst_y - @pos_y).abs
    	
    	if (dx==0) && (@pos_y==7)
    	 (dy==1) || (dy==2)
    	elsif (dx==0) && (@pos_y<=6) 
    		(dy==1)
    	else
		
			false
		end

	end

end