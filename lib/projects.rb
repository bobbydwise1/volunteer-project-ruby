require('pg')
require('pry')
require('volunteers')

class Project
  attr_accessor :title, :id

  def initialize(attributes)
    @title = attributes.fetch(:title)
    @id = attributes.fetch(:id)
  end

  def ==(another_project)
    self.title().==(another_project.title()).&(self.id().==(another_project.id()))
  end

  def self.all
    returned_projects = DB.exec("SELECT * FROM projects")
    projects = []
    returned_projects.each do |each|
      title = each.fetch("title")
      id = each.fetch("id").to_i()
      projects.push(Project.new({:title => title, :id => id}))
    end
    return projects
  end

  def save
    result = DB.exec("INSERT INTO projects (title) VALUES ('#{@title}') RETURNING id")
    @id = result.first().fetch("id").to_i
  end

  def self.find(id)
    returned_projects = DB.exec("SELECT * FROM projects WHERE id = #{id}")
    returned_projects.each() do |project|
      title = project.fetch("title")
      id = project.fetch("id").to_i()
      return Project.new({:title => title, :id => id})
    end
  end

  def volunteers
    returned_volunteers = DB.exec("SELECT name FROM volunteers WHERE project_id = #{@id}")
    returned_volunteers.each() do |volunteer|
      name = volunteer.fetch("name")
      project_id = volunteer.fetch("project_id")
      id = volunteer.fetch("id").to_i()
      return Volunteer.new({:name => name, :project_id => project_id, :id => id})
    end
  end

end
