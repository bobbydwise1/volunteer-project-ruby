require('pg')
require('pry')

class Volunteer
  attr_accessor :name, :project_id, :id

  def initialize(attributes)
    @name = attributes.fetch(:name)
    @project_id = attributes.fetch(:project_id)
    @id = attributes.fetch(:id)
  end

  def ==(another_volunteer)
    self.name().==(another_volunteer.name()).&(self.id().==(another_volunteer.id()))
  end

  def self.all
    returned_volunteers = DB.exec("SELECT * FROM volunteer_tracker;")
    volunteers = []
    returned_volunteers.each do |each|
      name = each.fetch("name")
      project_id = each.fetch("project_id")
      id = each.fetch("id").to_i()
      volunteers.push(Volunteer.new({:name => name, :project_id => project_id, :id => id}))
    end
    return volunteers
  end

  def save
    result = DB.exec("INSERT INTO volunteer_tracker (name, project_id) VALUES ('#{@name}', '#{@project_id}') RETURNING id;")
    @id = result.first().fetch("id").to_i()
  end

  def self.find(id)
    returned_volunteers = DB.exec("SELECT * FROM volunteer_tracker WHERE id = #{id};")
    returned_volunteers.each() do |volunteer|
      name = volunteer.fetch("name")
      project_id = volunteer.fetch("project_id")
      id = volunteer.fetch("id").to_i()
      return Volunteer.new({:name => name, :project_id => project_id, :id => id})
    end
  end

end
