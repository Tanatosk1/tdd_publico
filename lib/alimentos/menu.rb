module Alimento
	class Menu
		attr_reader :nombre
		def initialize (nombre, &block)
			@nombre = nombre
			@lista_platos = []
			@lista_precios = []
			if(block_given?)
				instance_eval(&block)
			end
		end
		def descripcion(str)
			@descripcion = str
		end
		def componente(h)
			@lista_platos << h[:plato]
			@lista_precios << h[:precio]
		end
		def precio(f)
			@precio = f
		end
		def to_s()
			str = ""
			str += @nombre
			i = 0 
			return @lista_platos.size
			#while i < @lista_platos.size
			#	str += @lista_platos[i].to_s
			#	i += 1
			#end	
			#return str
			#@lista_platos.collect {|x| x.to_s}
		end
	end
end

