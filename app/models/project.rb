class Project < ActiveRecord::Base
  has_many :stories

  validates :title, :presence => true
  validates :description, :presence => true
end
