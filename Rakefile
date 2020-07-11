require 'fileutils'

task :default => ['init']

task :init do
  puts 'Installing dependencies...'
  system 'bundle install'

  puts "Creating 'bots.json' in the 'config_files' directory..."
  File.open('config_files/bots.json', 'w') { |file| file.write('{}') }

  unless File.exist?('db/data.db')
    puts 'Initializing database...'
    if Dir['db/migrations/*.rb'].empty?
      require 'sequel'
      Sequel.extension :migration
      File.open("db/migrations/#{Time.now.strftime("%Y%m%d%H%M%S")}_create_database.rb", 'w') do |file|
        file.write(File.read 'geode/templates/initial_migration_template.rb')
      end
      Sequel::Migrator.run(Sequel.sqlite(File.expand_path 'db/data.db'), 'db/migrations')
    end
  end

  puts "Geode initialized. Run 'thor list' to see the commands."
end