#Clase alimento que engloba a todas las otras pequeñas clases.



class Alimento


 
attr_accessor :nombre,:prt,:gli,:lp

 def initialize(nombre,proteina,glucido,lipido)
    

@nombre = nombre
@prt =proteina
@gl = glucido
@lp = lipido

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
  
end
