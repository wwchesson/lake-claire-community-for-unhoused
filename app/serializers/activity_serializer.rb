class ActivitySerializer < ActiveModel::Serializer
  attributes :id, :name, :day_of_week, :teacher_id, :resident_id, :location
end
