require "spec_helper"



RSpec.describe Alimento do

  it "has a version number" do
    expect(Alimento::VERSION).not_to be nil
  end

  before :each do

    @huevo = Alimento.new('Huevo Frito',14.1,0.0,19.5,'lacteos')
   
    @leche = Alimento.new('Leche',3.3,4.8,3.2,'lacteos')
   
    @cerdo = Alimento.new('Cerdo',21.5,0.0,6.3,'carnes')

    @bacalao = Alimento.new('Bacalao',17.7,0.0,0.4,'pescado')

    @aceite = Alimento.new('Aceite',0.0,0.2,99.6,'al_graso')

    @azucar = Alimento.new('Azúcar',0.0,99.8,0.0,'al_carbohidratos')

    @tomate = Alimento.new('Tomate',1.0,3.5,0.2,'verduras')

    @platano = Alimento.new('Plátano',1.2,21.4,0.2,'frutas')
    
    
    #Variable usada para la practica 9 del calculo del indice glucemico
    @manzana = Alimento.new('Manzana',1.0,1.0,1.0,'frutas')



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

  describe "# Obtener valor energético gracias a un método " do

    it "valor_energ = alimento.prt * 4 + alimento.gl * 4 + alimento.lp * 9" do
        
        
        ###### HUEVO


      expect(@huevo.valor_energetico).to eq(231.9)
      
       ###### LECHE

      expect(@leche.valor_energetico).to eq(61.2)
      


    end

  end
 describe "# Obtener alimento formateado " do

    it "formateo del alimento" do

        expect(Alimento.new("pera",10,10,10).to_s).to eq("pera: 10 g de proteina, 10 g de glúcido, 10 g de lipido")
        
        expect(@leche.to_s).to eq("Leche: 3.3 g de proteina, 4.8 g de glúcido, 3.2 g de lipido")

    end

  end

  describe "# Obtener clase del objeto " do

    it "Clase de objeto" do
          
       
        expect(@leche.class).to be_a_kind_of(Alimento)
    end

  end

  describe "# Obtener jerarquia del objeto " do

    it "jerarquia de objeto" do

       
        expect(@leche.tipo).to be_a_kind_of(Grupo)
    end

  end
  
  describe "# Comparar atributos de alimentos " do

    it "comprobar valore <" do

        expect(@leche < @huevo).to be(true)
    end

    it "comprobar valores ==" do

        expect(@leche == @cerdo).to be(true)
    end
    it "comprobar valores >=" do

        expect(@leche >= @aceite).to be(true)
    end
  end
   describe "# Obtener indice gluceimo " do

    it "Observar que tiene la variable" do
         
        expect(@manzana).to have_attributes(:indexGluc => nil)
    end

    it "Metodo para el calculo del Indice Glucemico" do
          
        datos = [[6.7, 6.5, 6.8, 6.9, 7.0, 7.1, 6.9, 6.9, 6.9, 6.7, 6.9, 7.3, 7.0, 7.0, 7.2, 7.1, 6.8, 7.2 ,7.3 ,7.0 ,6.8 ,6.7, 6.8, 6.7, 6.9],[4.6 ,4.8 ,5.3, 5.6, 6.1, 6.5, 6.6, 7.0, 7.0, 6.8, 6.4, 6.3, 6.1, 6.1, 6.2, 6.0, 6.1, 6.1 ,6.2, 6.3, 6.4 ,6.1 ,6.1 ,5.7 ,5.9]]
        gluc = [[4.9 ,5.3 ,5.9 ,6.7 ,7.2 ,7.6 ,8.0 ,8.2, 8.2 ,8.4 ,8.3 ,8.3 ,8.0 ,7.5, 7.1, 6.8 ,6.8 ,6.9, 6.8, 6.3 ,6.2 ,6.3 ,6.2 ,6.3, 6.1],[6.3, 5.4, 5.6, 5.7, 6.5, 7.4, 7.9, 7.4, 7.7, 7.9, 7.9, 7.8, 7.8, 7.8, 8.0, 8.5, 9.4 ,10.8 ,10.5, 9.1, 8.9, 8.3, 7.7, 7.6 ,7.5]]
          @manzana.calculate_index(datos,gluc)
            expect(@manzana.indexGluc).to eq(54.499780077077745)
    end
    
 
  end


end
