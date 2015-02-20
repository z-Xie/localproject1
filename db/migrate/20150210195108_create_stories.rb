class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :title
      t.string :description
      t.integer :point_value
      t.string :Stage
      t.string :Developer
      t.references :Project, index:true

      t.timestamps null: false
    end
  end
end
