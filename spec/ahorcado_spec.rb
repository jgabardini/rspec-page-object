#

describe  'Ahorcado' do
	it 'Nombre de la aplicación' do
		visit '/'
		expect(page.find('h1').text).to include('Ahorcado')
	end

	it 'X no está en repollo' do
		visit '/'
		fill_in :letra, :with => 'X'
		click_button :una_letra
		expect(page.find('#mensaje').text).to include('no existe')
	end

	it 'E está en repollo' do
		visit '/'
		fill_in :letra, :with => 'E'
		click_button :una_letra
		expect(page.find('#mensaje').text).to include('Acertaste')
	end

	it 'casa no es repollo' do
		visit '/'
		fill_in :palabra, :with => 'casa'
		click_button :una_palabra
		expect(page.find('#mensaje').text).to include('no es')
	end

	it 'repollo es repollo. Ganaste' do
		visit '/'
		fill_in :palabra, :with => 'repollo'
		click_button :una_palabra
		expect(page.find('#mensaje').text).to include('Ganaste')
	end

end 