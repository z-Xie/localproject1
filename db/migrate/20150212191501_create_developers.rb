class CreateDevelopers < ActiveRecord::Migration
  def change
    create_table :developers do |t|
      t.string :name
      t.string :email
      t.string :password
      t.references :Project, index: true

      t.timestamps null: false
    end
    add_foreign_key :developers, :Projects
  end
end
