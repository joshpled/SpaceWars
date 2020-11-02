class Winner < ApplicationRecord
    validates_length_of :initials, maximum: 3, allow_blank: true
    validates :initials, format: { with: /\A[a-zA-Z]+\z/, message: "only allow letters" }
    
end
