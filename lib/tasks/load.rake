require 'csv'

desc "Loading default data from"
task :load_csv, [:file_name] => :environment do |t, args|
	CSV.foreach(args[:file_name], :headers => true) do |row|
		puts row.to_hash
		Shop.create(row.to_hash)

		#sleep to avoid the api rate limit
		sleep(1.0/10.0)
	end
end