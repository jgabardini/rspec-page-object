require './spec/ahorcado_po'

describe  'Ahorcado' do
	it 'Nombre de la aplicación' do
		inicio = AhorcadoPO.new
		expect(inicio.aplicacion).to include('Ahorcado')
	end

	it 'X no está en repollo' do
		inicio = AhorcadoPO.new
		resultado= inicio.probar_letra 'X'
		expect(resultado.mensaje).to include('no existe')	
	end

	it 'E está en repollo' do
		inicio = AhorcadoPO.new
		resultado= inicio.probar_letra 'E'
		expect(resultado.mensaje).to include('Acertaste')
	end

	it 'casa no es repollo' do
		inicio = AhorcadoPO.new
		resultado= inicio.probar_palabra  'casa'
		expect(resultado.mensaje).to include('no es')
	end

	it 'repollo es repollo. Ganaste' do
		inicio = AhorcadoPO.new
		resultado= inicio.probar_palabra   'repollo'
		expect(resultado.mensaje).to include('Ganaste')
	end

end 