require "spec_helper"



Rspec.describe Alimento do
 it "has a version number" do

    expect(Alimento::VERSION).not_to be nil

  end

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


 describe "# Obtener alimento formateado " do

    it "formateo del alimento" do

       
        expect(@leche.to_s).to eq("grupo de huevos, lacteos y helados: Leche: 3.3 g de proteina, 4.8 g de glúcido, 3.2 g de lipido ")

    end

  end


  describe "# Obtener valor energético gracias a un método " do

    it "valor_energ = alimento.prt * 4 + alimento.gl * 4 + alimento.lp * 9" do
        
        
        ###### HUEVO


      expect(@huevo.valor_energetico).to eq(231.9)
      
       ###### LECHE

      expect(@leche.valor_energetico).to eq(61.2)
      


    end

  end

describe "# Obtener clase del objeto " do

    it "Clase de objeto" do

       
        expect(@leche.class).to be_a_kind_of(Alimento)
    end

  end

describe "# Obtener jerarquia del objeto " do

    it "jerarquia de objeto" do

       
        expect(@leche.lacteos).to be_a_kind_of(Grupo)
    end

  end
  
  describe "# Comparar atributos de alimentos " do

    it "comprobar proteina" do

        expect(@leche < @huevo).to be(true)
    end

  end
  
  
end

