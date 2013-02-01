class AuthorSession < ActiveRecord::Base
   attr_accessible :username, :password
end
