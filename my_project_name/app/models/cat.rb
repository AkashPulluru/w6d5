require 'action_view'

class Cat < ApplicationRecord
    
    include ActionView::Helpers::DateHelper 

    CAT_COLORS = ['orange', 'blue', 'yellow', 'red', 'amber', 'black', 'white']
    GENDER = ['M', 'F']

    validates :color, presence: true, inclusion: { in: CAT_COLORS }
    validates :name, presence: true
    validates :sex, presence: true, inclusion: { in: GENDER }
    validate :birth_date_cannot_be_future

    def birth_date_cannot_be_future
        if birth_date > Date.today
            errors.add(:expiration_date, "can't be in the past")
        end 
    end    

    

end 
