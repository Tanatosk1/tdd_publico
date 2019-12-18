# = platoA.rb
#
# Autor:: David Marcos Ramallo Gracia
# Alu:: alu0101061320@ull.edu.es
#
# == Module Alimento
#
# Con este modulo se pretende contener la clase Alimento
#
# === Clase platoA
#
# Definicion de la clase *platoA* compuesta por
# * metodo *initialize*: encargado de inicializar valores
# * metodo *por_proteinas*: recorre la lista de alimentos y devuelve el porcentaje de proteinas
# * metodo *por_carbohidratos*: recorre la lista de alimentos y devuelve el porcentaje de carbohidratos
# * metodo *por_lipidos*: recorre la lista de alimentos y devuelve el porcentaje lipidos 
# * metodo *valor_energetico*: devuelve el valor energetico del plato
# * metodo *total_nutrientes*: devuelve el total de los nutrientes (la suma de todos ellos)
# * metodo *to_s*: devuelve la cadena de un plato 
# * metodo *<=>*: comparar platos por su valor energetico
#
#
module Alimento
class PlatoA
include Comparable
attr_reader :nombre
def initialize (nombre, lista_alimentos, lista_cantidades)
	@nombre = nombre
	@lista_alimentos = lista_alimentos			
	@lista_cantidades = lista_cantidades	
end
def por_proteinas
	aux_proteinas = 0.0
	i = 0			
	while i < @lista_alimentos.size do			
		aux_proteinas += @lista_alimentos[i].proteinas * @lista_cantidades[i]				
		i+=1		
	end
	return ((aux_proteinas/total_nutrientes)*100.0).round(2)
end
def por_carbohidratos
	aux_carbohidratos = 0.0	
	i = 1
	while i < @lista_alimentos.size do
		aux_carbohidratos += @lista_alimentos[i].carbohidratos * @lista_cantidades[i]		
		i+=1				
	end
	return ((aux_carbohidratos/total_nutrientes)*100.0).round(2)	
end
def por_lipidos	
	aux_lipidos = 0.0
	i = 1		
	while i < @lista_alimentos.size do
		aux_lipidos += @lista_alimentos[i].lipidos * @lista_cantidades[i]		
		i+=1			
	end						
	return ((aux_lipidos/total_nutrientes)*100.0).round(2)		
end
def valor_energetico					
	i = 0	
	valorC = 0.0			
	while i< @lista_alimentos.size do
		valorC += @lista_alimentos[i].valorEnergetico
		i+=1
	end
	return valorC
end
def total_nutrientes		
	i = 0		
	proteinas = carbohidratos = lipidos = 0.0			
	while i < @lista_alimentos.size do		
		proteinas += (@lista_alimentos[i].proteinas)*(@lista_cantidades[i])
		carbohidratos += (@lista_alimentos[i].carbohidratos)*(@lista_cantidades[i])			
		lipidos += (@lista_alimentos[i].lipidos)*(@lista_cantidades[i])
	 	i+=1	
	end				
	return proteinas + lipidos + carbohidratos	
end		
def to_s 
	i=0
	cadena = ""
	while i<@lista_alimentos.size do	
		cadena += "#{@lista_alimentos[i].nombre} -> #{@lista_cantidades[i]} "
		i += 1	
	end					
	return cadena
end
def <=>(otroPlato)		
	return valor_energetico <=> otroPlato.valor_energetico
end

end
end

