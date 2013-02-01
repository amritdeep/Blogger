class Attachment < ActiveRecord::Base
  attr_accessible :article_id

  belongs_to :article
end
