task :default => [:server]

task :server, [:port] do |t, args|
	port = args.port
	port = 9292 if port == nil
	sh "rackup -p #{port}"
end

task :build do 
	puts "todo"
end
