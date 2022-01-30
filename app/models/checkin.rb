class Checkin < ApplicationRecord
  enum mood: [:happy, :sad, :angry, :neutral]
  enum sleep: [:tired, :rested]
  enum stomach: [:no_stomach, :healthy, :unhealthy]
  enum caffeine: [:no_caffeine, :some]
  belongs_to :user

  validates :date, presence: true
  validates :mood, presence: true
  # Validate enum type inclusion?
end
