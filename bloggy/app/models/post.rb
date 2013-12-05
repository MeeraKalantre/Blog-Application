class Post < ActiveRecord::Base
    validates :title, :author,  :presence=> true
    validates :body,  :presence =>true
    belongs_to :user
    has_many  :comments

   scope:published,where("posts.published_at IS NOT NULL")
   scope:draft,where("posts.published_at IS NULL")
   scope:recent,lambda{published where("posts.published_at > ? ",1.week.ago.to_date)}
   scope:where_title,lambda{|term|where("posts.title LIKE ?","%#{term}%")}

   def long_title
     "#{title} - #{published_at }"
   end

   def published?
      published_at .present?
   end
end
