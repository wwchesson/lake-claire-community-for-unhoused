class Teacher < User
    has_many :activities
    
    has_many :progress_reports
    has_many :clients, through: :progress_reports

    belongs_to :manager
end
