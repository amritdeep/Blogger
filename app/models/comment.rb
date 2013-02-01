class Comment < ActiveRecord::Base
	# allow for mass assignment
   attr_accessible :article_id, :author_name, :body

   belongs_to :article
end
