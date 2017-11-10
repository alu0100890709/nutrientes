<<<<<<< HEAD
require "spec_helper"
require 'lib/alimento'


RSpec.describe Alimento do

  before :each do

        @huevo = Alimento.new('Huevo Frito',14.1,0.0,19.5,0,0,1,0,0,0,0,0)
     @leche = Alimento.new('Leche',3.3,4.8,3.2,0,0,1,0,0,0,0,0)
    @cerdo = Alimento.new('Cerdo',21.5,0.0,6.3,1,0,0,0,0,0,0,0)

    @bacalao = Alimento.new('Bacalao',17.7,0.0,0.4,0,1,0,0,0,0,0,0)

    @aceite = Alimento.new('Aceite',0.0,0.2,99.6,0,0,0,1,0,0,0,0)

    @azucar = Alimento.new('Azúcar',0.0,99.8,0.0,0,0,0,0,1,0,0,0)

    @tomate = Alimento.new('Tomate',1.0,3.5,0.2,0,0,0,0,0,1,0,0)

    @platano = Alimento.new('Plátano',1.2,21.4,0.2,0,0,0,0,0,0,1,0)


  end


=======

require "spec_helper"
require 'lib/point'



describe Alimento do

  before :each do

    @huevo = Alimento.new('Huevo Frito',14.1,0.0,19.5)
    @leche = Alimento.new('Leche',3.3,4.8,3.2)


  end    

    
>>>>>>> 945a683492e440e3f4d70eddffdb0e642fe116dc

  describe "# Existencia del nombre del alimento" do

    it "Se almacena correctamente los nombres de alimento" do

<<<<<<< HEAD
      expect(@huevo.nombre).to eq('Huevo Frito')
=======
      expect(@huevo.nombre).to eq('Huevo Frito') 
>>>>>>> 945a683492e440e3f4d70eddffdb0e642fe116dc
      expect(@leche.nombre).to eq('Leche')


    end


  end

<<<<<<< HEAD
 describe "# Existencia de las cantidades de los macronutrientes del alimento en gramos." do
=======


  describe "# Existencia de las cantidades de los macronutrientes del alimento en gramos." do
>>>>>>> 945a683492e440e3f4d70eddffdb0e642fe116dc

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

<<<<<<< HEAD
=======


>>>>>>> 945a683492e440e3f4d70eddffdb0e642fe116dc
  describe "# Obtención de atributos del alimento por un método" do

    it "Obtencion del nombre correctamente" do

             expect(@huevo.get_nombre).to eq("Huevo Frito")

    end
    
     it "proteina" do
         
             expect(@huevo.get_prt).to eq(14.1)
         
    end
    
     it "glucido" do
          expect(@huevo.get_gl).to eq(0.0)
         
    end
    
     it "lipido" do
         
                  expect(@huevo.get_lp).to eq(19.5)
    end
    
  end

<<<<<<< HEAD
=======

 describe "# Obtener alimento formateado " do

    it "formateo del alimento" do

        expect(Alimento.new("pera",10,10,10).to_s).to eq("pera: 10 g de proteina, 10 g de glúcido, 10 g de lipido")
        
        expect(@leche.to_s).to eq("Leche: 3.3 g de proteina, 4.8 g de glúcido, 3.2 g de lipido")

    end

  end


>>>>>>> 945a683492e440e3f4d70eddffdb0e642fe116dc
  describe "# Obtener valor energético gracias a un método " do

    it "valor_energ = alimento.prt * 4 + alimento.gl * 4 + alimento.lp * 9" do
        
        
        ###### HUEVO


      expect(@huevo.valor_energetico).to eq(231.9)
      
       ###### LECHE

      expect(@leche.valor_energetico).to eq(61.2)
      


    end

  end
<<<<<<< HEAD
 describe "# Obtener alimento formateado " do

    it "formateo del alimento" do

        expect(Alimento.new("pera",10,10,10).to_s).to eq("pera: 10 g de proteina, 10 g de glúcido, 10 g de lipido")
        
        expect(@leche.to_s).to eq("Leche: 3.3 g de proteina, 4.8 g de glúcido, 3.2 g de lipido")

    end

  end

describe "# Obtener clase del objeto " do

    it "Clase de objeto" do

       
        expect(@leche.class).to eq("Alimento")
    end

  end
=======



end
>>>>>>> 945a683492e440e3f4d70eddffdb0e642fe116dc
