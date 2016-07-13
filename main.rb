class Main < Sinatra::Base


	@@times = 0

	get '/' do
		erb :index
	end

	get '/beach' do
        @location = params['location']
		if @@times == 5
			@@times = 0
		end
		@@times += 1
		@times = @@times
		puts @times
        erb :beach
    end

end
