require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')

require_relative('../models/brands.rb')
require_relative('../models/categories.rb')
require_relative('../models/products.rb')
also_reload('../models/*')

get '/products' do
  @products = Product.all
  erb(:'products/index')
end

get '/products/new' do
  erb(:'products/new')
end
