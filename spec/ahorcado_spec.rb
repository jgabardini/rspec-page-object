describe  '' do
	it 'hi' do
		visit '/'
		expect(page).to have_content 'Ahorcado'
	end

end 