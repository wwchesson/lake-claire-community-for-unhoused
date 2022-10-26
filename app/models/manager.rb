class Manager < User
    has_many :clients
    has_many :teachers

    has_one :stage
end
