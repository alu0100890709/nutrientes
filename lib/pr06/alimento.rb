#Clase alimento que engloba a todas las otras pequeñas clases.

<<<<<<< HEAD


<<<<<<< HEAD

=======
>>>>>>> codigo
class Grupo
  
include Comparable 
attr_accessor :tipo
  def initialize(tipo)
   
   @tipo = tipo 

end

  
  
  def to_s
      
  if @tipo=='carnes'
    "grupo de carnes y derivado:"
  elsif @tipo == 'pescado'
      "grupo de pescado y mariscos:"
      elsif  @tipo == 'lacteos'
      "grupo de huevos, lacteos y helados:"
      elsif @tipo == 'al_graso'
       "(grupo de alimentos grasos )"
       elsif @tipo == 'al_carbohidratos'
       "grupo de alimentos ricos en carbohidratos:"
       elsif @tipo == 'frutas'
         "grupo de frutas:"
            elsif @tipo == 'verduras'
         "grupo de verduras y hortalizas:"
         else
         "grupo de bebidas:"
      end
    end  
end




#Clase alimento que engloba a todas las otras pequeñas clases.
class Alimento < Grupo



attr_accessor :nombre,:prt,:gli,:lp,:ind_gluc,:valor_energ


 def initialize(nombre,proteina,glucido,lipido,tipo)
    
<<<<<<< HEAD
super(carnes,pescado,lacteos,al_graso,al_carbohidratos,verduras, frutas, bebidas)
=======
class Alimento


 
attr_accessor :nombre,:prt,:gli,:lp

 def initialize(nombre,proteina,glucido,lipido)
    
>>>>>>> 945a683492e440e3f4d70eddffdb0e642fe116dc
=======
super(tipo)
>>>>>>> codigo

 
    
@ind_gluc = nil  #variable para la glucosa
@nombre = nombre
@prt =proteina
@gl = glucido
@lp = lipido

  end
  
   def to_s
<<<<<<< HEAD
   

    s = "( "

    s << super.to_s        #encadenamiento (chaining)

    s << " #{@nombre}: #{@prt} g de proteina,#{@gl} g de glúcido,#{@lp} g de lipidos )"

    s

  end

=======

    "(#{@nombre}: #{@prt} g de proteina,#{@gl} g de glúcido,#{@lp} g de lipidos )"

  end
>>>>>>> 945a683492e440e3f4d70eddffdb0e642fe116dc
  
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
    
    @valor_energ= ( @prt * 4) + (@gl * 4) +(@lp * 9)
    
end


def <=>(other)


    @valor_energ=other.valor_energ
    
  end

def calculate_index(data, gluc)
        aibc = [[],[]]
        data.each do |x|
            aux = 0
            x.each_index do |a| 
                if (a  != 0) 
                    aux += (((x[a] - x[0]) + (x[a - 1] - x[0])) /2)*5
                end 
            end 
            aibc[0] << aux
        end
        gluc.each do |x|
            aux = 0
            x.each_index do |a| 
                if (a  != 0) 
                    aux += (((x[a] - x[0]) + (x[a - 1] - x[0])) /2)*5
                end 
            end 
            aibc[1] << aux
        end
        ig_index = []
        aibc[0].each_index { |x|  ig_index << ((aibc[0][x] / aibc[1][x]) * 100)}
        suma = 0
        ig_index.each{ |x| suma += x}
        @ind_gluc = (suma / ig_index.length)

    end
end
<<<<<<< HEAD

=======
>>>>>>> 945a683492e440e3f4d70eddffdb0e642fe116dc
