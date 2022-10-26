class Teacher < User
    has_many :activities,
    has_many :clients, through: :activities

    belongs_to :manager
end
