require('sinatra')
require('sinatra/reloader')
require('rspec')
also_reload('./lib/**/*.rb')
require('./lib/words')
require('./lib/definition')



get('/') do
  erb(:index)
end

get('/words/new') do
  erb(:words_form)
end

get('/words') do
  @words = Words.all()
  erb(:words)
end


post('/words') do
  @name = params.fetch('wordname')
  Words.new(@name).save()
  @words = Words.all()
  erb(:success)
end

# get('/definitions/:id') do
#   @definitions = Definition.find(params.fetch('id'))
#   erb(:definition)
# end

get('/words/:id') do
  @words = Words.find(params.fetch('id').to_i())
  erb(:word)
end

get('/words/:id/definitions/new') do
  @word = Words.find(params.fetch('id').to_i())
  erb(:definition_form)
end

post('/definitions') do
  @definitionname = params.fetch('definition')
  @definition = Definition.new(@definitionname)
  @definition.save()
  @word = Words.find(params.fetch('definition_id').to_i())
  @word.add_definition(@definition)
  erb(:success_definition)
end
