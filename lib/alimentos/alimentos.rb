class Alimento
   attr_reader :nombre, :gei, :terreno
   def initialize(nombre, proteinas, carbohidratos, lipidos, gei, terreno)
    @nombre = nombre
    @gei = gei
    @terreno = terreno
    @proteinas = proteinas
    @carbohidratos = carbohidratos
    @lipidos = lipidos    
   end
   def to_s
	   "Nombre: #{@nombre}.\nProteinas: #{@proteinas}\nCarbohidratos: #{@carbohidratos}\nLipidos: #{@lipidos}\nGEI: #{@gei}\nTerreno:#{@terreno}"
   end
end
