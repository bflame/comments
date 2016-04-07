# The Pages controller contains all of the code for any page inside /pages
class PagesController < ApplicationController
  
  # back-end code for pages/index
  def index
  end

  # back-end code for pages/home
  def home
  end

   # back-end code for pages/profile
   def profile
     # Grab username from the URL, as :id
   if (User.find_by_username(params[:id]))
     @username = params[:id]
   else
     # Redirect to 404 (Currently root)
      redirect_to root_path, :notice=> "The User was not found in our database"
   end
  
   end
  
     # back-end code for pages/explore
     def explore
     end
  
end
