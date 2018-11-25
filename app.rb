require 'sinatra/base'

# Don't forget to do setup test helper and the spec_helper before loop

class Chitter < Sinatra::Base

  get '/' do
    erb(:index)
  end

  run! if app_file == $0

end
