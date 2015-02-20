class Story < ActiveRecord::Base
  include Enumerable
  belongs_to :project

  validates :title, :presence => true
  validates :description, :presence => true
  validates :point_value, :presence => true
  validates :Stage, :presence => true
end
