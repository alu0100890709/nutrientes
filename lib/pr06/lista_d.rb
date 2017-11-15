 create a Struct with :value, :next and :prev

Node = Struct.new(:value, :next, :prev)
  



class Lista

	include Enumerable
    attr_reader :head,:tail
    def initialize
        @head=nil
        @tail=nil
    end

    
    def insert(value)
     if head ==nil
         head.Node.new(value,nil,nil)
         lista.push head
    else 
        lista.push value
    end
    end
    
        def insert_many(v1,v2,v3)
     if head ==nil
         head.Node.new(v1,nil,nil)
         @n1.Node.new(v2,nil,head)
         @n2.Node.new(v3,nil,@n1)
         lista.push head
          lista.push @n1
           lista.push @n2
         
    else 
        lista.push v1
         lista.push v2
          lista.push v3
    end
    end
    
     
    def extract_head
     if head ==nil
      puts "No hay nada que extraer"
    else 
        lista.pop head
    end
    end
    
      def extract_tail
     if head ==nil
      puts "No hay nada que extraer"
    else 
        lista.pop tail
    end
	end
      def each
	if n==nil

    yield @head 
    else 
	yield n.value
	end

  end

    
end
