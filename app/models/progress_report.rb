class ProgressReport < ApplicationRecord
    belongs_to :client
    belongs_to :teacher
    belongs_to :activity
end
