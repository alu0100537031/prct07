require './lib/fraccion.rb'
 
describe Fraccion do
	before :each do
		@Frac1 = Fraccion.new(3, 2)
	end
    

    describe "# Debe existir un " do
    	it "numerador" do
	       defined?(@Frac1.num) # Existe un numerador
   	end
	
	 it "denominador" do
	        defined?(@Frac1.denom) # Existe un denominador
	end
   end
   
   describe "# Fraccion de forma simplificada " do 
        it "Forma simplificada" do  
	  @Frac1.num.should eq(3)
	  @Frac1.denom.should eq(2)
        end
   end
	 
   describe "retorna el " do
      it "metodo num() para obtener al numerador" do
         @Frac1.num.should eq @Frac1.num()
      end
      
      it "metodo den() para obtener al denominador" do
         @Frac1.denom.should eq @Frac1.denom()
      end
   end
   
   describe "Muestra la fraccion (a/b)" do
      it " muestra la fraccion en formato (a/b)" do
	 @Frac1.to_s.should eq("3/2")
      end   
      
      it " muestra la fraccion en coma flotante " do
	 @Frac1.to_f.should eq(1.5)
      end   
   end
   
   describe "Compara si dos fracciones son iguales  " do
      it " se comprueba si son iguales las fracciones" do
         @Frac2 = Fraccion.new(6,4)
         (@Frac1 == @Frac2).should eq(true) # Sobrecarga del operador ==
      end
   end

   describe "Halla el valor absoluto de la fraccion " do
     it "calcula el valor absoluto " do
       @Frac2 = Fraccion.new(6,4)
       @Frac1.abs.should eq @Frac2
     end
   end

   describe "Halla el reciproco de la fraccion " do
     it "calcula el reciproco " do
       @Frac2 = Fraccion.new(4,6)
       @Frac1.reciprocal.should eq @Frac2
     end
   end

   describe "Halla opuesto de la fraccion " do
    it "calcula el opuesto " do
     @Frac2 = Fraccion.new(-6,4)
     @Frac2 = -@Frac1 # Sobrecarga del operador -@ (opuesto)
     @Frac2.to_s.should eq("-3/2")
    end
   end
   
   describe "Halla la " do
     it "suma de fracciones" do
      @Frac2 = Fraccion.new(6,4)
      @Frac3 = @Frac1 + @Frac2 # sobrecarga del operador +
      @Frac3.to_f.should eq(3.0)
     end
    
     it "resta de fracciones" do
      @Frac2 = Fraccion.new(6,8)
      @Frac3 = @Frac1 - @Frac2 # sobrecarga del operador -
      @Frac3.to_f.should eq(0.75)
     end
    
     it "producto de fracciones" do
      @Frac2 = Fraccion.new(6,8)
      @Frac3 = @Frac1 * @Frac2 # sobrecarga del operador *
      @Frac3.to_s.should eq("9/8")
     end
    
     it "division de fracciones" do
      @Frac2 = Fraccion.new(6,5)
      @Frac3 = @Frac1 / @Frac2 # sobrecarga del operador /
      @Frac3.to_s.should eq("5/4")  
     end
     
     it "resto de fracciones " do
      @Frac2 = Fraccion.new(1,7)
      @Frac3 = @Frac1 % @Frac2 # sobrecarga del operador %
      @Frac3.to_s.should eq("1/14") 
     end  
   end

  describe "Se debe comparar " do
    it "si una fraccion es menor que otra " do
     @Frac2 = Fraccion.new(5,2)
     res = @Frac1 < @Frac2  # sobrecarga del operador <
     res.should eq(true)
    end

    it "si una fraccion es mayor que otra " do
     @Frac2 = Fraccion.new(5,2)
     res = @Frac1 > @Frac2  # sobrecarga del operador >
     res.should eq(false)
    end

    it "si una fraccion es menor o igual que otra " do
     @Frac2 = Fraccion.new(5,2)
     res = @Frac1 <= @Frac2  # sobrecarga del operador <=
     res.should eq(true)
    end

    it "si una fraccion es mayor o igual que otra " do
     @Frac2 = Fraccion.new(3,2)
     res = @Frac1 >= @Frac2  # sobrecarga del operador >=
     res.should eq(true)
    end
  end
end  
