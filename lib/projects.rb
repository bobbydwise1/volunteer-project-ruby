require('pg')
require('pry')
require('volunteers')

class Project
  attr_accessor :title, :id

  def initialize(attributes)
    @title = attributes.fetch(:title)
    @id = attributes.fetch(:id)
  end

  def ==(other)
    same_class = self.class().eql?(other.class())
    same_title = self.title().eql?(other.title())
    same_class.&(same_title)
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
    returned_volunteers = DB.exec("SELECT * FROM volunteers WHERE project_id = #{self.id}")
    volunteer_array = []
    returned_volunteers.each() do |volunteer|
      name = volunteer.fetch("name")
      project_id = volunteer.fetch("project_id")
      id = volunteer.fetch("id").to_i()
      volunteer_array.push(Volunteer.new({:name => name, :project_id => project_id, :id => id}))
    end
    return volunteer_array
  end

  def update(attributes)
    new_title = attributes.fetch(:title)
    new_id = attributes.fetch(:id)
    found_id = DB.exec("UPDATE projects SET title = '#{new_title}' WHERE title = '#{@title}' RETURNING id")
    if found_id
      @id = found_id
      @title = new_title
      return @title
    end
    return false
  end
end
