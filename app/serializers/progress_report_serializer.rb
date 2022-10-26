class ProgressReportSerializer < ActiveModel::Serializer
  attributes :id, :client_id, :activity_id, :teacher_id, :comments, :progress, :graduate
end
