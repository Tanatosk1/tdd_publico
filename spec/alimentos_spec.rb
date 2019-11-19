require 'alimentos'
RSpec.describe Alimentos do
	before :each do
		@carne_vaca = Alimento.new("Carne de vaca", 21.1, 0.0, 3.1, 50.0, 164.0)
		@carne_cordero = Alimento.new("Carne de cordero", 18.0, 0.0, 17.0, 20.0, 185.0)
	        @camarones = Alimento.new("Camarones", 17.6, 1.5, 0.6, 18.0, 2.0)
	        @chocolate = Alimento.new("Chocolate", 5.3, 47.0, 30.0, 2.3, 3.4)
	        @salmon = Alimento.new("Salmon", 19.9, 0.0, 13.6, 6.0, 3.7)
	        @cerdo = Alimento.new("cerdo", 21.5, 0.0, 6.3, 7.6, 11.0)
	        @pollo = Alimento.new("Pollo", 20.6, 0.0, 5.6, 5.7, 7.1)
	        @queso = Alimento.new("Queso", 25.0, 1.3, 33.0, 11.0, 41.0)
	        @cerveza = Alimento.new("Cerveza", 0.5, 3.6, 0.0, 0.24, 0.22)
	        @leche_vaca = Alimento.new("Leche de vaca", 3.3, 4.8, 3.2, 3.2, 8.9)
	        @huevos = Alimento.new("Huevos", 13.0, 1.1, 11.0, 4.2, 5.7)
	        @cafe = Alimento.new("Cafe", 0.1, 0.0, 0.0, 0.4, 3.4)
	        @tofu = Alimento.new("Tofu", 8.0, 1.9, 4.8, 2.0, 2.2)
	        @lentejas = Alimento.new("Lentejas", 23.5, 52.0, 1.4, 0.4, 3.4)
		@nuez = Alimento.new("Nuez", 20.0, 21.0, 54.0, 0.3, 7.9)

		@lista_alimentos = [@cafe,@leche_vaca, @huevos, @pollo, @tofu, @nuez, @cerveza, @salmon, @carne_vaca]
	        @lista_cantidades = [2,4,3,7,10,2,7,4,6]

		@n = Node.new(@carne_vaca,nil, nil)

end
it "has a version number" do
	expect(Alimentos::VERSION).not_to be nil
end
context "Existencia de variables de instancia" do
it "Existe un nombre de alimento" do
		  expect(@carne_vaca.instance_variable_defined?("@nombre")).to eq(true)
end
it "Existe cantidad de gases de efecto invernadero" do
	 	  expect(@carne_vaca.instance_variable_defined?("@gei")).to eq(true)
end
it "Existe cantidad de terreno utilizado" do
	 	  expect(@carne_vaca.instance_variable_defined?("@terreno")).to eq(true)
end
end

context "Se puede acceder a las variables de instancia" do
	it "Existe un metodo para obtener el nombre del alimento" do
		  expect(@carne_vaca.nombre).to eq("Carne de vaca")	  
	end
	it "Existe un metodo para obtener las emisiones de gases de efecto invernadero" do
		  expect(@carne_vaca.gei).to eq(50.0)
	end
	it "Existe un método para obtener el terreno utilizado" do
		  expect(@carne_vaca.terreno).to eq(164.0)
	end
	it "Existe un metodo para obtener el alimento formateado" do
		  expect(@carne_vaca.to_s).to eq("Nombre: Carne de vaca.\nProteinas: 21.1\nCarbohidratos: 0.0\nLipidos: 3.1\nGEI: 50.0\nTerreno: 164.0")
	end
	it "Existe un metodo para obtener valor energetico del alimento"do
	 	  expect(@carne_vaca.valorEnergetico).to eq(112.3)
	end
	it "Existe metodo impacto ambiental" do
		  expect(@carne_vaca.impactoAmbiental(@lista_alimentos, @lista_cantidades,0)).to eq(1559.7199999999998)
	end
end
context "Creación de nodo y uso" do
	it "Debe existir un nodo de la lista con sus datos y su siguiente" do
		expect(@n.next).to eq nil
		expect(@n.prev).to eq nil
	end
end

end
