require 'rspec'
require 'pg'
require 'projects'
require 'volunteers'
require 'pry'
require 'date'

DB = PG.connect({:dbname => 'volunteers_tracker'})

RSpec.configure do |config|
  config.after(:each) do
    # DB.exec("DELETE FROM authors *;")
    DB.exec("TRUNCATE volunteers * RESTART IDENTITY")
    # DB.exec("INSERT INTO authors (name) VALUES ('Unknown')")

    # DB.exec("DELETE FROM patrons *;")
    DB.exec("TRUNCATE projects * RESTART IDENTITY")
    # DB.exec("INSERT INTO patrons (name) VALUES ('Unknown')")

  end
end
