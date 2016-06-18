class PostsController < ApplicationController
    
    
    def new
        @post = Post.new
    end
    
    def create
        @post = Post.new(post_params)
        @post.user_id = current_user.id
        respond_to do |f|
            if (@post.save)
                f.html { redirect_to "", notice: "A post has been created." }
            else
                f.html { redirect_to "", notice: "There was an error, the post wasn't saved." }
            end
        end
    end
    
    def show
         @user = User.find(params[:id])
         @p = @user.posts
    end
    
    private
    
    def post_params # Certain data is passed via form
        params.require(:post).permit(:user_id, :content)
        
    end
end