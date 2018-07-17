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
    @phrase_number_of_times = []


      params[:number].to_i.times do |i|
        @phrase_number_of_times << params[:phrase]
      puts  params[:phrase]

    end

    "#{@phrase_number_of_times}"

  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @all_five_words = params[:word1], params[:word2], params[:word3], params[:word4], params[:word5]
      @words_combined = @all_five_words.join(' ')
    "#{@words_combined}."

  end

  get '/:operation/:number1/:number2'do

    if :operation == add
      @add = params[:number1] + [:number2]
    elsif :operation == subtract
      @subtract = params[:number1] - [:number2]
    elsif :operation == multiply
      @multiply = params[:number1] * [:number2]
    else :operation == divide
      @divide = params[:number1] / [:number2]

      "#{@add} || #{@subtract} || #{@multiply} || #{@divide}"
  end
end


end
