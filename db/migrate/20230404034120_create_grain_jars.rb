# frozen_string_literal: true

class CreateGrainJars < ActiveRecord::Migration[7.0]
  def change
    create_table :grain_jars do |t|
      t.date :retired
      t.date :innoculated
      t.date :shaken
      t.integer :type
      t.string :name

      t.timestamps
    end
  end
end
