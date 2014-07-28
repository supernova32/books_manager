class Section < ActiveRecord::Base
  belongs_to :content
  has_many :subsections, dependent: :destroy
  accepts_nested_attributes_for :subsections, reject_if: :all_blank, allow_destroy: true
  validates_presence_of :title
end
