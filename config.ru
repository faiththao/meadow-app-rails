# This file is used by Rack-based servers to start the application.

require_relative "config/environment"

run Rails.application


# use Rack::Cors do
#     allow do
#       origins 'localhost:3000', '127.0.0.1:3000',
#               /\Ahttp:\/\/192\.168\.0\.\d{1,3}(:\d+)?\z/
#               # regular expressions can be used here
  
#       resource '/*', :headers => 'x-domain-token'
#       resource '/*',
#           methods: [:get, :post, :delete, :put, :patch, :options, :head],
#           headers: 'x-domain-token',
#           expose: ['Some-Custom-Response-Header'],
#           max_age: 600
#           # headers to expose
#     end
  
#     allow do
#       origins '*'
#       resource '/public/*', headers: :any, methods: [:get, :post, :delete, :put, :patch, :options, :head]
  
#       # Only allow a request for a specific host
#       resource '/*',
#           headers: :any,
#           methods: [:get, :post, :delete, :put, :patch, :options, :head],
#           if: proc { |env| env['HTTP_HOST'] == 'api.example.com' }
#     end
# end
Rails.application.load_server  