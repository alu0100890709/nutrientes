#Clase alimento que engloba a todas las otras pequeñas clases.




class Grupo
  
include Comparable 

attr_accessor :carnes,:pescado,:lacteos,:al_graso,:al_carbohidratos,:verduras, :frutas, :bebidas
  def initialize(carnes,pescado,lacteos,al_graso,al_carbohidratos,verduras, frutas, bebidas)
    

@carnes = carnes
@pescado =pescado
@lacteos = lacteos
@al_graso = al_graso
@al_carbohidratos = al_carbohidratos
@verduras = verduras
@frutas = frutas
@bebidas = bebidas

  end
  
  def to_s
      
  if @carnes==1
    "grupo de carnes y derivado:"
  elsif @pescado==1
      "grupo de pescado y mariscos:"
      elsif @lacteos==1
      "grupo de huevos, lacteos y helados:"
      elsif @al_graso==1
       "(grupo de alimentos grasos )"
       elsif @al_carbohidratos==1
       "grupo de alimentos ricos en carbohidratos:"
       elsif @frutas==1
         "grupo de frutas:"
           elsif @verduras==1
         "grupo de verduras y hortalizas:"
         else
         "grupo de bebidas:"
      end
    end  
end
#Clase alimento que engloba a todas las otras pequeñas clases.
class Alimento < Grupo


 def initialize(nombre,proteina,glucido,lipido,carnes,pescado,lacteos,al_graso,al_carbohidratos,verduras, frutas, bebidas)
    
super(carnes,pescado,lacteos,al_graso,al_carbohidratos,verduras, frutas, bebidas)

@nombre = nombre
@prt =proteina
@gl = glucido
@lp = lipido

  end
  
   def to_s
   

    s = "( "

    s << super.to_s        #encadenamiento (chaining)

    s << " #{@nombre}: #{@prt} g de proteina,#{@gl} g de glúcido,#{@lp} g de lipidos )"

    s

  end

  
    def get_prt
      @prt
  end 
  
  def get_nombre
      @nombre
  end
  
    def get_lp
      @lp
  end 
  
    def get_gl
      @gl
  end 
  
  
def valor_energetico
    
   ( @prt * 4) + (@gl * 4) +(@lp * 9)
    
end


def <=>(other)

    #return nil unless other.instance_of? Point

   # @prt <=> other.gl
    #@gl <=> other.gl
  #  @lp <=> other.lp
    @valor_energ=other.valor_energ
    
  end

end

