module Alimento
	class Menu
		attr_reader :nombre
		attr_reader :descripcion
		attr_reader :platos
		attr_reader :precios
		attr_reader :precio

		def initialize (nombre, &block)
			@nombre = nombre
			@platos, @precios = [], []
			if(block_given?)
				instance_eval(&block)
			end
		end
		def Descripcion(descripcion)
			@descripcion = descripcion
		end
		def Componente(h)
			@platos << h[:plato]
			@precios << h[:precio]
		end
		def Precio(precio)
			@precio = precio
		end
		def to_s()
			str = ""
			str += @nombre
			i = 0 
			#return @lista_platos.size
			#while i < @lista_platos.size
			#	str += @lista_platos[i].to_s
			#	i += 1
			#end	
			#return str
			#@lista_platos.collect {|x| x.to_s}
		end
	end
end

