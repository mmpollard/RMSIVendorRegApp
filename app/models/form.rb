class Form < ActiveRecord::Base
    validates :name, :email, :user, presence: true
    #validates :email, presence: true

end
