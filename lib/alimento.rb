#Clase alimento que engloba a todas las otras pequeñas clases.



class Alimento


 
attr_accessor :nombre,:prt,:gli,:lp

 def initialize(nombre,proteina,glucido,lipido)
    

@nombre = nombre
@prt =proteina
@gl = glucido
@lp = lipido

  end
end
