class Activity < ApplicationRecord
    belongs_to :teacher
    belongs_to :stage

    has_many :progress_reports
    has_many :clients, through: :progress_reports
end
