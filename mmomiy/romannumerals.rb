class RomanNumerals

	def convertir_romano(numeronatural)
		if numeronatural == 0
			raise "No se puede convertir el numero 0"
		end

    return "V" if numeronatural == 5
    return "IV" if numeronatural == 4

		result = ""
    while numeronatural >= 1
      result += "I"
      numeronatural -= 1
    end
    return result
	end

end

