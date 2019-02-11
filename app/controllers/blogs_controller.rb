class BlogsController < ApplicationController
    

    #Rails Uses the concept of DRY that elimenate the redifition of action that's why we can use a private method called in every method we need 

    before_action :find_id, only: [:update,:edit, :destroy,:show]
    def about
    end

    def index 
        @Blog= Blog.all

    end

    def show
    #@Blog = Blog.find(params[:id])
    end

    def new 
    @blog=Blog.new
    end
    
    def create 
     @blog = Blog.create(params.require(:blog).permit(:title, :content))
      if @blog.save
        redirect_to root_path
      else
        render :new
      end
    end

    def edit
     #   @blog = Blog.find(params[:id])
    end

    def update
        @blog = Blog.find(params[:id])
        if @blog.update(params.require(:blog).permit(:title, :content))
            redirect_to root_path
        else
            render :edit
        end
    end

    def destroy
     #@blog = Blog.find(params[:id])
     @blog.destroy
        redirect_to root_path
    end

    private 
    def find_id
        @blog=Blog.find(params[:id])
    end
    

    

end
    





