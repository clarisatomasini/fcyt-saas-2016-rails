class Course < ActiveRecord::Base
    #YOUR CODE HERE
    #Implement a find_all_sorted method that
    #returns all the courses sorted by title in ascending fashion
  def self.find_all_sorted
    Course.order(:title)
  end
end
