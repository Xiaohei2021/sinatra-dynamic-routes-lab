require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @r_name = params[:name].reverse
    "#{@r_name}"
  end

  get '/square/:number' do
    @square = params[:number].to_i**2

    "The number squared is #{@square}"
  end

  get '/say/:number/:phrase' do
    @loop = params[:number].to_i
    @taici = params[:phrase] *@loop 
    
    "#{ @taici}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    # @w1 = params[:word1]
    # @w2 = params[:word2]
    # @w3 = params[:word3]
    # @w4 = params[:word4]
    # @w5 = params[:word5]

    # "#{@w1} " + "#{@w2} "+"#{@w3} "+"#{@w4} "+"#{@w5}." 
    @sentence = params[:word1] +" "+ params[:word2]+" " + params[:word3]+" " + params[:word4]+" " + params[:word5]

    "#{@sentence}."
  end

  get '/:operation/:number1/:number2' do
    @operate = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i

    case @operate 
      when "add"
        (@num1 + @num2).to_s
        
      when "subtract"
        (@num1 - @num2).to_s
        
      when "multiply"
        (@num1 * @num2).to_s

      when "divide"
        (@num1 / @num2).to_s
    end
        
  end


end