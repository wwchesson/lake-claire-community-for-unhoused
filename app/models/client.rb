class Client < User
    has_many :activites,
    has_many :teachers, through: :activities

    belongs_to :manager
    belongs_to :dorm
end
