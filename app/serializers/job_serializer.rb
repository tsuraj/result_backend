class JobSerializer < ActiveModel::Serializer
    attributes :id, :title, :organization, :last_date, :link
end