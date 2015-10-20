require 'csv'

namespace :materials do
  desc 'import materials'
  task :import => :environment do
    count_before_import = Material.count
    puts "material table currently has #{count_before_import}"
    puts "start importing materials ..."
    csv_text = File.read('materials.csv')
    csv = CSV.parse(csv_text, :headers => true)
    csv.each do |row|
      project_id = Project.find_by_name(row['Project']).id
      amount_string = row['Amount']
      amount = amount_string.match('^\d+').to_s.to_f
      unit = amount_string.match('^\d+').post_match
      Material.find_or_create_by(name: row['Material'],
                                 project_id: project_id,
                                 amount: amount,
                                 unit: unit)
    end
    count_after_import = Material.count - count_before_import
    puts "import is done with #{count_after_import} records imported"
  end
end