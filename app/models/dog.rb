class Dog < ApplicationRecord
    belongs_to :user
    validates :name, :age, :vaccination_status, :image, :description, presence: true
end
