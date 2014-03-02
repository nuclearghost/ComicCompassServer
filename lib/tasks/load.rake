require 'csv'

desc "Loading default data from"
task :load_csv => :environment do
	puts "should loading something"
	CSV.foreach('rake-test.csv', :headers => true) do |row|
		puts row.to_hash
	end
end