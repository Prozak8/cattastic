class Cat < ApplicationRecord
    acts_as_votable
    validates :url, presence: true
end
