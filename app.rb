require 'sinatra/base'
require './lib/peep'

# Don't forget to do setup test helper and the spec_helper before loop

class Chitter < Sinatra::Base

  get '/' do
    erb(:index)
  end

  get '/peeps_list' do
    @peeps = Peep.all
    erb(:'peeps/list')
  end

  get '/sign_in' do

  end

  run! if app_file == $0

end
