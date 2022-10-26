class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password_digest, :type, :firstname, :lastname, :date_of_birth, :email, :phone, :title, :needs, :interests, :stage, :emer_name, :emer_phone
end
