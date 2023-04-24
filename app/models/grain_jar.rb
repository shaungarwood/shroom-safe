# frozen_string_literal: true

class GrainJar < ApplicationRecord
  enum :grain, {
    oats: 0,
    brown_rice: 1,
    popcorn: 2,
    bird_seed: 3
  }

  def self.active_jars
    GrainJar.where(retired: nil)
  end

  def self.retired_jars
    GrainJar.where.not(retired: nil)
  end
end
