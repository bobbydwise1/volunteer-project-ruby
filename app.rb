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

post '/project_add' do
  # volunteer_name = params.fetch('volunteer_name')
  project_title = params.fetch('title')
  # new_volunteer = Volunteer.new({:volunteer_name => volunteer_name, :project_id => project_id, :id => nil})
  # new_volunteer.save
  new_project = Project.new({:title => project_title, :id => nil})
  project_id = new_project.save
  @volunteers = Volunteer.all
  @projects = Project.all
  erb(:index)
end

get '/project_management/:id' do
  id = params[:id]
  @current_project = Project.find(id)
  @volunteers = Volunteer.all
  @projects = Project.all
  erb(:project_management)
end

post '/project_management/:id' do
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

# get '/project_update' do
#   @volunteers = Volunteer.all
#   @projects = Project.all()
#   erb(:project_update)
# end
#
# post '/project_update' do
#   volunteer_name = params.fetch('volunteer_name')
#   project_title = params.fetch('title')
#   new_volunteer = Volunteer.new({:volunteer_name => volunteer_name, :project_id => project_id, :id => nil})
#   new_volunteer.save
#   new_project = Project.new({:title => project_title, :id => nil})
#   project_id = new_project.save
#   @volunteers = Volunteer.all
#   @projects = Project.all
#   erb(:project_update)
# end
