class Book < ActiveRecord::Base
  has_many :contents, dependent: :destroy
  accepts_nested_attributes_for :contents, reject_if: :all_blank, allow_destroy: true
end
