require 'classes'


get '/' do 
    @title = "List of Comics" 
    @books = Book.all(:order => [:pub])
    erb :list
end




