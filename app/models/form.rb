class Form < ActiveRecord::Base
    validates :user, length: {
        minimum: 1,
        maximum: 15,
        too_short: "contact name is required",
        too_long: "contact name should be less than 15 characters"
    }
    #validates :name, presence: true
    #validates :email, presence: true

end
