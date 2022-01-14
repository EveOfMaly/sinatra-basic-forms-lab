require_relative 'config/environment'
require_relative 'models/puppy'

class App < Sinatra::Base

   #load homepage with link 
    get '/' do 
        erb :index
    end

    #load homepage with form 
    get '/new' do 
        erb :create_puppy
    end

    #display puppies that are created
    post '/puppy' do 
        @puppy = Puppy.new(params[:name],params[:breed] ,params[:age] )
    
        erb :display_puppy
    end

end
