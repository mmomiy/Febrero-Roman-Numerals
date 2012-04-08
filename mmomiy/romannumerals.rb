class RomanNumerals

  SYMBOLS = [["L",50],["X",10],["V",5], ["IV",4],["I",1]]

	def convertir_romano(numeronatural)
		if numeronatural == 0
			raise "No se puede convertir el numero 0"
		end

    result = ""
    SYMBOLS.each do | romano, numero |
      while numeronatural >=  numero
        result += romano
        numeronatural -= numero
      end
    end
	
    return result
	end

end

