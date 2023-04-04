# frozen_string_literal: true

class GrainJar < ApplicationRecord
  type enum: %i[
    oats
    brown_rice
    popcorn
    bird_seed
  ]
end
