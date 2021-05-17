class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         has_many :connectors
         has_many :courses, through: :connectors
end
