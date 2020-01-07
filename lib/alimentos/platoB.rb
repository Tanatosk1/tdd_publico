# = platoB.rb
#
# Autor:: David Marcos Ramallo Gracia
# Alu:: alu0101061320@ull.edu.es
#
# == Module Alimento
#
# Con este modulo se pretende contener la clase Alimento
#
# === Clase platoB < Plato A
#
# Definicion de la clase *Plato B* que hereda de la clase _Plato A_ compuesta por
# * metodo *initialize*: encargado de inicializar valores
# * metodo *emisionesGEI*: devuelve las emisiones GEI del plato
# * metodo *uso_terreno*: devuelve el uso de terreno del plato
# * metodo *huella_nutricional*: devuelve la huella nutricional en funcion del valor energetico del plato
# * metodo *to_s*: devuelve los valores de un plato
# 
#
module Alimento
class PlatoB < PlatoA
	def initialize(nombre, lista_alimentos = nil, lista_cantidades = nil)
		super(nombre, lista_alimentos, lista_cantidades)
	end
	def emisionesGEI
		emisionesGEI = 0.0
		i = 0
		while i<@lista_alimentos.size do
			emisionesGEI += @lista_alimentos[i].gei
			i+=1		
		end	
		return emisionesGEI
	end
	def uso_terreno
		usoTerreno = 0.0
		i = 0			
		while i<@lista_alimentos.size do
			usoTerreno += @lista_alimentos[i].terreno	
			i+=1			
		end						
    		return usoTerreno
	end
	def to_s 
		cadena = ""
		i = 0
		valorEtotal = 0.0
		while i< @lista_alimentos.size do			
			cadena+= "Energia #{@lista_alimentos[i].nombre} -> #{@lista_alimentos[i].valorEnergetico} "
			valorEtotal+= @lista_alimentos[i].valorEnergetico
			i+=1		
		end	
		cadena+= " || Energia Total -> #{valorEtotal} "	
		return cadena			
	end
	def huella_nutricional
		indice_energia, indice_emisiones = 0.0
		# Indice valores caloricos
		if valor_energetico < 670
			indice_energia = 1.0
		elsif valor_energetico >= 670 && valor_energetico <= 830
			indice_energia = 2.0
		else
			indice_energia = 3.0
		end

		# Indice emisiones de plato
		if emisionesGEI < 800
			indice_emisiones = 1.0
		elsif emisionesGEI >= 800 && emisionesGEI <= 1200
			indice_emisiones = 2.0
		else
			indice_emisiones = 3.0
		end

		# Media
		return ((indice_energia + indice_emisiones) / 2)
	end	
end
end
