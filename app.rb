require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/projects')
require('./lib/volunteers')
require('pry')

DB = PG.connect({:dbname => 'volunteers_tracker'})

get '/' do
  erb(:index)
end

get '/volunteer_management' do
  @volunteers = Volunteer.all
  @projects = Project.all
  erb(:volunteer_management)
end

post '/volunteer_management' do
  volunteer_name = params.fetch('volunteer_name')
  project_title = params.fetch('title')
  new_volunteer = Volunteer.new({:volunteer_name => volunteer_name, :project_id => project_id, :id => nil})
  new_volunteer.save
  new_project = Project.new({:title => project_title, :id => nil})
  project_id = new_project.save
  @volunteers = Volunteer.all
  @projects = Project.all
  erb(:volunteer_management)
end

get '/project_management' do
  @volunteers = Volunteer.all
  @projects = Project.all()
  erb(:project_management)
end

post '/project_management' do
  title = params.fetch('title')

  new_project = Project.new({:title => title, :id => nil})
  new_project.save()
  @volunteers = Volunteer.all
  @projects = Project.all
  erb(:project_management)
end
