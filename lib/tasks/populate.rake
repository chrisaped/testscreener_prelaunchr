namespace :db do
  desc 'populate the development database with fake data'

  task :populate => :environment do
    require 'populator'
    require 'faker'
    @first_user = User.find 1

    User.populate 50 do |user|
      user.email = Faker::Internet.email  
      user.referrer_id = @first_user.id 
    end


  end
end