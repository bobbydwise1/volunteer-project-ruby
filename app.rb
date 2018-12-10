require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/projects')
require('./lib/volunteers')
require('pry')

DB = PG.connect({:dbname => 'volunteers_tracker'})

get '/' do
  @volunteers = Volunteer.all
  @projects = Project.all
  erb(:index)
end

post '/' do
  project_title = params.fetch('title')
  new_project = Project.new({:title => project_title, :id => nil})
  project_id = new_project.save
  @volunteers = Volunteer.all
  @projects = Project.all
  erb(:index)
end

get '/projects/:id' do
  id = params.fetch(:id).to_i
  @current_project = Project.find(id)
  @current_volunteers = Volunteer.find_by_project_id(id)
  binding.pry
  erb(:projects)
end

get '/projects/:id/edit' do
  id = params.fetch(:id).to_i
  @current_project = Project.find(id)
  erb(:edit)
end

patch '/projects/:id/edit' do
  id = params.fetch(:id).to_i
  title = params.fetch("title")
  @current_project = Project.find(params.fetch("id").to_i)
  @current_project.update({:title => title})
  erb(:projects)
end

delete '/projects/:id/edit' do
  id = params.fetch(:id).to_i
  @current_project = Project.find(params.fetch("id").to_i)
  @current_project.delete
  @volunteers = Volunteer.all
  @projects = Project.all
  erb(:index)
end

post '/volunteer' do
  volunteer_name = params.fetch('name')
  new_volunteer = Volunteer.new({:name => volunteer_name, :project_id => nil.to_i, :id => nil})
  volunteer_id = new_volunteer.save
  @volunteers = Volunteer.all
  @projects = Project.all
  erb(:index)
end
