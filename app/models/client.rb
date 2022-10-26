class Client < User
    has_many :progress_reports
    has_many :teachers, through: :progress_reports

    belongs_to :manager
    belongs_to :dorm
    belongs_to :stage
end
