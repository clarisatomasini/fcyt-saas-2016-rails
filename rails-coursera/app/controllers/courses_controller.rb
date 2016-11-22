class CoursesController < ApplicationController
    def index
        #CHANGE THIS TO SORT BY TITLE ASC
        #Instead of call Course.all, create a method in the model
        #Course.find_all_sorted
       @courses = Course.find_all_sorted
      #@courses = Course.all
    end
    def new
    end
    def create
        @course = Course.new(params.require(:course).permit(:title, :description, :institution))
        #YOUR CODE HERE
        @course.save!
        redirect_to "/courses"
    end
    def show
        #YOUR CODE HERE
        @course = Course.find(params[:id])
    end
end
