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

end
