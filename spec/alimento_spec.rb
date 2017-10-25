require "spec_helper"
require 'lib/alimento'


RSpec.describe Alimento do

  before :each do

    @huevo = Alimento.new('Huevo Frito',14.1,0.0,19.5)
    @leche = Alimento.new('Leche',3.3,4.8,3.2)


  end



  describe "# Existencia del nombre del alimento" do

    it "Se almacena correctamente los nombres de alimento" do

      expect(@huevo.nombre).to eq('Huevo Frito')
      expect(@leche.nombre).to eq('Leche')


    end


  end

 describe "# Existencia de las cantidades de los macronutrientes del alimento en gramos." do

    it "proteınas del alimento en gramos." do


      expect(@huevo.prt).to eq(14.1)
      expect(@leche.prt).to eq(3.3)



    end

     it "glucido del alimento en gramos." do


      expect(@huevo.gl).to eq(0.0)
      expect(@leche.gl).to eq(4.8)

      
    end
  
      it "lipido del alimento en gramos." do


      expect(@huevo.lp).to eq(19.5)
      expect(@leche.lp).to eq(3.2)

      
     end

  end

end
