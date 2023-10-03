# frozen_string_literal: true

class GrainJar < ApplicationRecord
  enum :grain, {
    oats: 0,
    brown_rice: 1,
    popcorn: 2,
    bird_seed: 3,
    other: 20
  }

  scope :active_jars, -> { where(retired: nil) }
  scope :retired_jars, -> { where.not(retired: nil) }

  validates :grain, presence: true

  def shake(date: Date.today)
    self.update_attribute(:shaken, date)
  end
end
