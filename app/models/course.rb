class Course < ApplicationRecord
    has_many :connectors
    has_many :users, through: :connectors
end
