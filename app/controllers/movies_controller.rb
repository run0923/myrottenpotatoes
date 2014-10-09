

# in app/controllers/movies_controller.rb
 
def show
  id = params[:id] # retrieve movie ID from URI route
  @movie = Movie.find(id) # look up movie by unique ID
  # will render app/views/movies/show.html.haml by default
end

def new
  # default: render 'new' template
end

# in movies_controller.rb
def create
  @movie = Movie.create!(params[:movie])
  redirect_to movies_path
end
