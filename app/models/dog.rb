class Dog < ApplicationRecord
    belongs_to :user
    validates :name, :age, :image, :description, presence: true
end
