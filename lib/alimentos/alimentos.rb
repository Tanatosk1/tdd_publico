class Alimento
   attr_reader:nombre
   def initialize(nombre, proteinas, carbohidratos, lipidos, gei, terreno)
    @nombre = nombre
    @gei = gei
    @terreno = terreno    
   end
   def to_s
	   "Nombre: #{@nombre}."
   end
end
