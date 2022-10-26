class Manager < User
    has_many :clients
    has_many :teachers
end
