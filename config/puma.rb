require 'colorize'
workers 2
threads 5, 5

preload_app!

port ENV["PORT"] || 9210

on_worker_boot do
  id = Process.pid
  $favorite_color = id.odd? ? :red : :green
  puts "Worker #{id} here. Hey!".send($favorite_color)
end