class CreatePackages < ActiveRecord::Migration
  def change
    create_table :packages do |t|
      t.decimal :hours
      t.string :first_videographer
      t.integer :first_videographer_hours
      t.string :second_videographer
      t.integer :second_videographer_hours
      t.integer :highlight_video
      t.integer :documentary_edit
      t.integer :published_dvds
      t.integer :published_bds
      t.decimal :over_eight_hours
      t.decimal :over_ten_hours

      t.timestamps null: false
    end
  end
end
