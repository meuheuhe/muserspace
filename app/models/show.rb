class Show < ActiveRecord::Base
    has_many :likes
      belongs_to :user

end
