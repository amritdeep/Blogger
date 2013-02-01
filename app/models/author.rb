class Author < ActiveRecord::Base
  authenticates_with_sorcery!
  # attr_accessible :title, :body
  validates_confirmation_of	:password, message: "Should match confirmation", if: :password
end
