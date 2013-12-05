=begin
class Comment < ActiveRecord::Base
  belongs_to:post 
  
  validates:name,:email,:body,:presence=>true
  validates:post_should_be_published, :presence=>true
 
  def post_should_be_published
     errors.add(:post_id,"is not published yet ")if post && !post.published?
  end
end
=end
