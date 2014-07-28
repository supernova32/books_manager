class Subsection < ActiveRecord::Base
  belongs_to :section
  validates_presence_of :title
end
