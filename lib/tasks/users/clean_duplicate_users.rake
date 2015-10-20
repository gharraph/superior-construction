namespace :users do
  desc 'clean duplicates from user table'
  task :clean_duplicate => :environment do
    start_time = Time.now
    user_count = User.count
    puts "task started at #{start_time} with #{user_count} users"
    query = "delete from users where id not in " +
              "(select max(id) from users group by email COLLATE NOCASE)"
    ActiveRecord::Base.connection.execute(query)
    end_time = Time.now
    user_count = User.count
    puts "task ended at #{end_time} with #{user_count} users"
  end
end