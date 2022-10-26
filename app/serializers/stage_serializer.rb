class StageSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :manager_id
end
