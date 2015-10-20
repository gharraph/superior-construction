require 'csv'

namespace :users do
  desc 'import projects users table'
  task :import_projects_users => :environment do
    puts "start importing ..."
    csv_text = File.read('Employees_projects.csv')
    csv = CSV.parse(csv_text, :headers => true)
    import_count = 0
    csv.each do |row|
      user = User.find_by_name(row['Employee'])
      project = Project.find_by_name(row['Project'])
      if !user.projects.include? project
        user.projects << project
        puts "#{project.name} is added to #{user.name}"
        import_count +=1
      end
    end
    puts "importing done with #{import_count} records affected"
  end
end