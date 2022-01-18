require 'sinatra'
require 'colorize'
require_relative 'feature.rb'
#require 'pry'
$favorite_color = :blue
puts "Initialization code here!".send($favorite_color)
# uncomment this line to ruin everything!
#new_brand = Feature.new_brand?

get '/' do
  puts "Request Handled by process: #{Process.pid}".send($favorite_color)
  #sleep(1)
  'Hello world!'  
end

get '/brand' do
  sleep(5)
  puts "Request Handled by process: #{Process.pid}".send($favorite_color)
  if Feature.new_brand?
      'Hello Orderizers!'
  else
    'Hello, Negotiators!'
  end
end  
