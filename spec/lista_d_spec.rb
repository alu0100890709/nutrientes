require "spec_helper"

RSpec.describe Lista do
  before :each do
    @nodo1 = Node.new(15, nil, nil)
    @list1 = Lista.new()
  end
  it "has a version number" do
    expect(Lista::VERSION).not_to be nil
  end
  
  context "Nodo" do
    it "tiene atributos value, next y prev" do
        expect(@nodo1).to have_attributes(:value => 15, :next => nil, :prev => nil)
    end
  end
  
  context "Lista" do
    it "tiene cabeza y cola" do
        expect(@list1).to have_attributes(:head => nil, :tail => nil)
    end
    
    it "Es enumerable" do
      @list1.push_head(15)
      @list1.push_head(10)
      x = [10, 15]
      i = 0
      @list1.each do |node|
        expect(node).to eq(x[i])
        i += 1
      end
    end
    
    it "puede insertar un nodo por la cabeza" do
        @list1.push_head(15)
        expect(@list1.head.value).to eq(15)
    end
    it "puede insertar un nodo por la cola" do
        @list1.push_tail(10)
        expect(@list1.tail.value).to eq(10)
    end
    
    it "puede insertar varios nodos" do
        @list1.push([1,2,3])
        expect(@list1.head.value).to eq(1)
        expect(@list1.head.next.value).to eq(2)
        expect(@list1.head.next.next.value).to eq(3)
    end
    
    it "puede extraer el nodo de la cabeza" do
        expect(@list1.pop_head).to be_nil
        @list1.push_head(5)
        expect(@list1.pop_head).to eq(5)
    end
    
    it "puede extraer el nodo de la cola" do
        expect(@list1.pop_tail).to be_nil
        @list1.push_head(10)
        expect(@list1.pop_tail).to eq(10)
    end
  end

  describe "# haciendo el punto enumerable" do
    it "comprobrando el metodo any?" do
      expect(@list1.any?).to eq(true)
  end
    it "comprobrando max" do
      expect(@list1.max).to eq(1)
    end
    it "comprobrando el metodo all? con un bloque vacio" do
      expect(@list1.all?).to eq(true)
    end
 end

end
