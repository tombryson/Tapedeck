class User < ApplicationRecord
    validates :email, :uniqueness => true, :presence => true
    has_many :tapedecks
end
