class Camper < ApplicationRecord
    has_many :camper_activities
    has_many :activities, through: :camper_activities
    validates :name, uniqueness: true, presence: true
    validates :age, numericality: {greater_than: 7, less_than: 19}
end
