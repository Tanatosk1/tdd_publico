require 'alimentos'
RSpec.describe Alimentos do
	before :all do
		@carne_vaca = Alimento.new("Carne de vaca", 21.1, 0.0, 3.1, 50.0, 164.0)
end
it "has a version number" do
	expect(Alimentos::VERSION).not_to be nil
end
it "Existe un nombre de alimento" do
		  expect(@carne_vaca.instance_variable_defined?("@nombre")).to eq(true)
end
it "Existe cantidad de gases de efecto invernadero" do
	 	  expect(@carne_vaca.instance_variable_defined?("@gei")).to eq(true)
end
it "Existe cantidad de terreno utilizado" do
	 	  expect(@carne_vaca.instance_variable_defined?("@terreno")).to eq(true)
end
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
end
