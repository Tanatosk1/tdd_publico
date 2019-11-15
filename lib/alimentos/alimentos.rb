class Alimento
   attr_reader :nombre, :gei, :terreno
   def initialize(nombre, proteinas, carbohidratos, lipidos, gei, terreno)
    @nombre = nombre
    @proteinas = proteinas
    @carbohidratos = carbohidratos
    @lipidos = lipidos
    @gei = gei
    @terreno = terreno    
   end
   def to_s
	  "Nombre: #{@nombre}.\nProteinas: #{@proteinas}\nCarbohidratos: #{@carbohidratos}\nLipidos: #{@lipidos}\nGEI: #{@gei}\nTerreno: #{@terreno}"
   end
   def valorEnergetico
	   	(@proteinas*4 + @carbohidratos*4 + @lipidos*9).round(4)
   end
end
