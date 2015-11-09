class Beer < ActiveRecord::Base
  def upvote
    self.votes += 1
    save
  end
end
