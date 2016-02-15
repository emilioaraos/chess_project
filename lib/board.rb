class Board
	def initialize(pieces)
		@pieces=pieces
	end
	def mov?(startx,starty,destx,desty)
		if @pieces[startx][starty]==nil||destx>8||desty>8
			false
		elsif @pieces==nil
			false
		else
			@pieces[startx][starty].mov?(destx,desty)
		end
	end
end
