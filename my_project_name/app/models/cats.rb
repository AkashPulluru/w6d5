class Cat < ApplicationRecord
    
    :cat_colors = ['orange', 'blue', 'yellow', 'red', 'amber', 'black', 'white']
    :gender = ['M', 'F']

    validates :color, presence: true, inclusion { in: :cat_colors }
    validates :name, presence: true
    validates :sex, presence: true, inclusion { in: :gender }
    validate :birth_date_cannot_be_future

    

end 
