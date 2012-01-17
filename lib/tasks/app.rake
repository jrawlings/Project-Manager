
namespace :app do
  
  task :ensure_development_environment => :environment do
    if Rails.env.production?
      raise "\nI'm sorry, Dave, I can't do that.\n(You're asking me to drop your production database.)"
    end
  end
  
  desc "Reset"
  task :reset => [:ensure_development_environment, "db:drop", "db:create", "db:migrate", "db:seed", "app:populate"]
  
  desc "Populate the database with developmenbt data."
  task :populate => :environment do
    [
      {:first_name => "Darth",  :last_name => "Vadar"},
      {:first_name => "Commander",  :last_name => "Praji"}, 
      {:first_name => "Biggs", :last_name => "Darklighter"}, 
      {:first_name => "Luke", :last_name => "Skywalker"},
      {:first_name => "Han", :last_name => "Solo"},
    ].each do |attributes|
      Person.find_or_create_by_first_name_and_last_name(attributes)
    end
  end
end