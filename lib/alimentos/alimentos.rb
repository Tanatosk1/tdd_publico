# = alimentos.rb
#
# Autor:: David Marcos Ramallo Gracia
# Alu:: alu0101061320@ull.edu.es
#
# == Module Alimento
#
# Con este modulo se pretende contener la clase Alimento
#
# === Clase Alimento
#
# Definicion de la clase *Alimento* compuesta por
# * metodo *initialize*: encargado de inicializar valores
# * metodo *to_s*: devuelve los valores de un alimento
# * metodo *valorEnergetico*: devuelve el valor energetico de un alimento
# * metodo *<=>*: metodo definido para comparar un alimento con otro a partir de su valor energetico
# * metodo *impactoAmbiental*: devuelve el impacto ambiental de un alimento
# 
#
module Alimento
class Alimento
        include Comparable
        attr_reader :nombre, :gei, :terreno, :proteinas, :carbohidratos, :lipidos
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
        def <=>(otroAlimento)
		valorEnergetico <=> otroAlimento.valorEnergetico
	end
        def impactoAmbiental(lista_alimentos, lista_cantidades, genero) #genero es para saber si nos referimos a hombre (0) o mujer (1)
                gei = 0
                terreno = 0
                proteinas = 0
                kcal = 0
                cont = 0
                lista_alimentos.each do |alimento|  #Recorrer la lista de alimentos extrayendo las kcal de cada uno
                        kcal = (kcal + alimento.valorEnergetico*lista_cantidades[cont]).round(4)
                        gei = (gei + alimento.gei*lista_cantidades[cont]).round(4) #Incrementar GEI de cada alimento
                        terreno = (terreno + alimento.terreno*lista_cantidades[cont]).round(4) #Incrementar terreno de cada alimento
                        proteinas = proteinas + alimento.proteinas
                        cont = cont +1
                end

                if genero == 0 && kcal >= 3000 && proteinas >= 54
                        return gei + terreno

                elsif genero == 1 && kcal >= 2300 && proteinas >= 41
                                return gei + terreno
                else
                        "ERROR"
                end
        end
end
end
