class CreateAbouts < ActiveRecord::Migration
  def change
    create_table :abouts do |t|
      t.string :about_title
      t.text :about_text
      t.string :goal_title
      t.text :goal_text

      t.timestamps
    end
  end
end
