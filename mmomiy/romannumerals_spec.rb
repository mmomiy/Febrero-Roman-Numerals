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

  context "convertir simbolos (I,V,X,L,C,D,M)" do
    it "1 debe convertirse en I" do
      @romano.convertir_romano(1).should == "I"
    end
    
    it "5 debe convertirse en V" do
      @romano.convertir_romano(5).should == "V"
    end

    it "10 debe convertirse en X" do
      @romano.convertir_romano(10).should == "X"
    end

  end

  context "Agregar un valor " do
    it "2 debe convertirse en II" do
     @romano.convertir_romano(2).should == "II"
    end  

    it "3 debe convertirse en III" do
     @romano.convertir_romano(3).should == "III"
    end 

    it "8 debe convertirse en VIII" do
     @romano.convertir_romano(8).should == "VIII"
    end 

    it "16 debe convertirse en XVI" do
     @romano.convertir_romano(16).should == "XVI"
    end 
  end

  context "Disminuir un valor " do
    it "4 debe convertirse en IV" do
     @romano.convertir_romano(4).should == "IV"
    end   
  end
end

