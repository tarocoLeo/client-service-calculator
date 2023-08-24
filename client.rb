require 'net/http'
require 'json'

def get_response(url)
  uri = URI(url)
  response = Net::HTTP.get(uri)
  JSON.parse(response)
end

def calculator_sum(a, b)
  response = get_response("http://localhost:3000/sum/#{a}/#{b}")
  response['result']
end

def calculator_division(a, b)
  response = get_response("http://localhost:3000/division/#{a}/#{b}")
  response['result']
end

# exemplos de uso
puts "Soma: #{calculator_sum(10, 5)}"
puts "Divisão: #{calculator_division(10, 2)}"