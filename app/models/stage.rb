class Stage < ApplicationRecord
    belongs_to :manager
    has_many :activities
    has_many :clients
end
