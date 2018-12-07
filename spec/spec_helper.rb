require 'rspec'
require 'pg'
require 'projects'
require 'volunteers'
require 'pry'
require 'date'

DB = PG.connect({:dbname => 'volunteers_tracker_test'})

RSpec.configure do |config|
  config.after(:each) do

    DB.exec("DELETE FROM projects *;")
    # DB.exec("TRUNCATE projects * RESTART IDENTITY")
    # DB.exec("INSERT INTO projects (name) VALUES ('Unknown')")

    DB.exec("DELETE FROM volunteers *;")
    # DB.exec("TRUNCATE volunteers * RESTART IDENTITY")
    # DB.exec("INSERT INTO volunteers (name) VALUES ('Unknown')")

  end
end
