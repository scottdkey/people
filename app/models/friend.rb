class Friend < ApplicationRecord
  def full_name
    # Person.find(params[:first_name]) + " " + Person.find(params[:last_name])
    self.first_name + " " + self.last_name
  end
end
