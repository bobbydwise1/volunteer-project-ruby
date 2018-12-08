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

get '/project_view' do
  @volunteers = Volunteer.all
  @projects = Project.all
  erb(:project_view)
end

get '/project_add' do
  @volunteers = Volunteer.all
  @projects = Project.all
  erb(:project_add)
end

post '/project_add' do
  volunteer_name = params.fetch('volunteer_name')
  project_title = params.fetch('title')
  new_volunteer = Volunteer.new({:volunteer_name => volunteer_name, :project_id => project_id, :id => nil})
  new_volunteer.save
  new_project = Project.new({:title => project_title, :id => nil})
  project_id = new_project.save
  @volunteers = Volunteer.all
  @projects = Project.all
  erb(:project_add)
end

get '/project_update' do
  @volunteers = Volunteer.all
  @projects = Project.all()
  erb(:project_update)
end

post '/project_update' do
  volunteer_name = params.fetch('volunteer_name')
  project_title = params.fetch('title')
  new_volunteer = Volunteer.new({:volunteer_name => volunteer_name, :project_id => project_id, :id => nil})
  new_volunteer.save
  new_project = Project.new({:title => project_title, :id => nil})
  project_id = new_project.save
  @volunteers = Volunteer.all
  @projects = Project.all
  erb(:project_update)
end

get '/project_update' do
  @volunteers = Volunteer.all
  @projects = Project.all()
  erb(:project_update)
end

post '/project_update' do
  volunteer_name = params.fetch('volunteer_name')
  project_title = params.fetch('title')
  new_volunteer = Volunteer.new({:volunteer_name => volunteer_name, :project_id => project_id, :id => nil})
  new_volunteer.save
  new_project = Project.new({:title => project_title, :id => nil})
  project_id = new_project.save
  @volunteers = Volunteer.all
  @projects = Project.all
  erb(:project_update)
end

get '/volunteer_view' do
  @volunteers = Volunteer.all
  @projects = Project.all()
  erb(:volunteer_view)
end

post '/volunteer_view' do
  volunteer_name = params.fetch('volunteer_name')
  project_title = params.fetch('title')
  new_volunteer = Volunteer.new({:volunteer_name => volunteer_name, :project_id => project_id, :id => nil})
  new_volunteer.save
  new_project = Project.new({:title => project_title, :id => nil})
  project_id = new_project.save
  @volunteers = Volunteer.all
  @projects = Project.all
  erb(:project_update)
end

get '/volunteer_add' do
  @volunteers = Volunteer.all
  @projects = Project.all()
  erb(:volunteer_add)
end

post '/volunteer_add' do
  volunteer_name = params.fetch('volunteer_name')
  project_title = params.fetch('title')
  new_volunteer = Volunteer.new({:volunteer_name => volunteer_name, :project_id => project_id, :id => nil})
  new_volunteer.save
  new_project = Project.new({:title => project_title, :id => nil})
  project_id = new_project.save
  @volunteers = Volunteer.all
  @projects = Project.all
  erb(:volunteer_add)
end

get '/volunteer_assign' do
  @volunteers = Volunteer.all
  @projects = Project.all()
  erb(:volunteer_add)
end

post '/volunteer_assign' do
  volunteer_name = params.fetch('volunteer_name')
  project_title = params.fetch('title')
  new_volunteer = Volunteer.new({:volunteer_name => volunteer_name, :project_id => project_id, :id => nil})
  new_volunteer.save
  new_project = Project.new({:title => project_title, :id => nil})
  project_id = new_project.save
  @volunteers = Volunteer.all
  @projects = Project.all
  erb(:volunteer_add)
end
