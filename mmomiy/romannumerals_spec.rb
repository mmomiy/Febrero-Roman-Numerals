require './romannumerals.rb'

describe RomanNumerals do

  context "convertir " do

    it "1 en I" do
      @romano = RomanNumerals.new()   
      @romano.convertir_romano(1).should == "I"
    end
  end
  
end
