require "rails_helper"

RSpec.describe Course, :type => :model do
    it "creates a new course" do
        ia = Course.create!(title: "Artificial Intelligence", description: "IA intro", institution: "FCYT")

        expect(ia).not_to be nil
        expect(ia.title).to eql "Artificial Intelligence"
    end
    xit "Gets specific course by id" do
        #YOUR CODE HERE
      expect(show(:id)).not_to raise_error
    end
    xit "Lists all course sorted by title asc" do
        #YOUR CODE HERE
      expect(find_all_sorted).not_to raise_error
    end
end