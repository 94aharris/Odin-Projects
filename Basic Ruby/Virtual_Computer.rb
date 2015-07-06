class Computer
    @@users = {}
    def initialize(username, password)
        @username = username
        @password = password
        @files = {}
        
        @@users[username] = password
    end
    
    def Computer.get_users
       return @@users 
    end
    
    def create(filename)
       time = Time.now
       @files[filename] = time
       puts "#{filename} was created at #{time} by #{@username}"
    end
end

my_computer = Computer.new("Tony","swigswag89*")
my_computer.create("homework")
my_computer.@files