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
end
