require 'sinatra'

PALABRA = "repollo"

get '/' do
    erb :index
end

post '/letra' do
	letra=  params[:letra]
	if PALABRA.include? letra.downcase
		@mensaje= "Acertaste! #{letra} existe en la palabra secreta"
	else
		@mensaje= "#{letra} no existe en la palabra secreta"
	end		
    erb :index
end

post '/palabra' do
	palabra=  params[:palabra]
	if PALABRA == palabra.downcase
		@mensaje= "Ganaste! #{palabra} es la palabra secreta"
	else
		@mensaje= "#{palabra} no es la palabra secreta"
	end		
    erb :index
end
