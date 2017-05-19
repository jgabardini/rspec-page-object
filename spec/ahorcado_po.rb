class AhorcadoPO
	include Capybara::DSL

	def initialize(carga_inicial=true)
		if carga_inicial
			visit '/'
		end
	end
	def aplicacion
		page.find('h1').text
	end

	def probar_letra(letra)
		fill_in :letra, :with => letra
		click_button :una_letra
		AhorcadoPO.new false
	end


	def probar_palabra(palabra)
		fill_in :palabra, :with => palabra
		click_button :una_palabra
		AhorcadoPO.new false
	end

	def mensaje
		page.find('#mensaje').text
	end

end
