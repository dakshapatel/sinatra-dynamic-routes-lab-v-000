require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name_reversed = params[:name].reverse
    "#{@name_reversed}"
  end

  get '/square/:number' do
    @square_number = params[:number].to_i * params[:number].to_i

    "#{@square_number.to_s}"
    
  end

  get '/say/:number/:phrase' do
    @phrase_number_of_times = params[:number].to_i.times params[:phrase]
    binding.pry
    "#{@phrase_number_of_times}"
  end

end
