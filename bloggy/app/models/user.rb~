class User < ActiveRecord::Base
   has_many :posts, :order=> ' published_at DESC ,title ASC',
                    :dependent=>:nullify
   has_many :replies, :through =>:posts, :source =>:comments
   
end
