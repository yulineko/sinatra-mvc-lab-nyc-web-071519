require_relative 'config/environment'

class App < Sinatra::Base

    get "/" do
        erb :user_input
    end

    post "/piglatinize" do
        piglat = PigLatinizer.new
        @piglatin = piglat.piglatinize(params[:user_phrase])

        erb :results
    end
end

