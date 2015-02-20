class AddDeveloperRefToStories < ActiveRecord::Migration
  def change
    add_reference :stories, :Developer, index: true
    add_foreign_key :stories, :Developers
  end
end
