class AddStoryRefToDevelopers < ActiveRecord::Migration
  def change
    add_reference :developers, :Story, index: true
    add_foreign_key :developers, :Stories
  end
end
