class Checkin < ApplicationRecord
  enum mood: [:happy, :sad, :angry, :neutral]
  enum sleep: [:tired, :rested]
  belongs_to :user
end
