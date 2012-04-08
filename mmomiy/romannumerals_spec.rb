require './romannumerals.rb'

describe RomanNumerals do

  before(:each)do
    @romano = RomanNumerals.new()
  end

  it "no debe ser 0" do
    expect {
        @romano.convertir_romano(0)
      }.should raise_exception
  end

  context "convertir " do

    it "1 en I" do
     @romano.convertir_romano(1).should == "I"
    end

    it "2 en II" do
     @romano.convertir_romano(2).should == "II"
    end  

    it "3 en III" do
     @romano.convertir_romano(3).should == "III"
    end 
  end

  
end

