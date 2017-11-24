describe Lista do

  before :each do

    
    @n2 = Node.new(2,3,1)
   
    
    @l1 = Lista.new
    @l2 = Lista.new

  end    
  describe "# Observar valor del nodo y nodo anterior y posterior a los que apunta " do

    it " Existir un Nodo de la lista con sus datos, su siguiente y su previo nodo" do

        
        expect(@n2.to_s).to eq("2 3 1 ")

    end

  end
  
 describe "# Observar que existe una Lista con su cabeza y su cola  " do

    it " existir una Lista  " do

        
        expect(@l1).to not_be_eq(nil)

    end
  end
 describe "# haciendo el punto enumerable" do
    it "comprobrando el metodo any?" do

      expect(@l1.any?).to eq(true)
  end
    it "comprobrando max" do

      expect(@l1.max).to eq(1)

    end
    it "comprobrando el metodo all? con un bloque vacio" do

      expect(@l2.all?).to eq(true)

     
    end
 end
end
