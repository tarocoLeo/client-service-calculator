require 'sinatra'
require 'json'

def sum(a, b)
  a + b
end

def division(a, b)
  if b != 0
    a / b
  else
    "Divisão por zero não é definida."
  end
end

get '/sum/:a/:b' do
  content_type :json
  a = params[:a].to_f
  b = params[:b].to_f
  { result: soma(a, b) }.to_json
end

get '/division/:a/:b' do
  content_type :json
  a = params[:a].to_f
  b = params[:b].to_f
  { result: division(a, b) }.to_json
end