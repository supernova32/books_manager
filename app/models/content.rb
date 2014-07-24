class Content < ActiveRecord::Base
  belongs_to :book
  has_many :sections, dependent: :destroy
  accepts_nested_attributes_for :sections, reject_if: :all_blank, allow_destroy: true

  def self.print_contents(contents)
    index = 1
    sub_index = 1
    sub_sub_index = 1
    output = ''
    contents.each do |content|
      output += "#{index}. #{content.content}<br/>"
      content.sections.each do |section|
        output += "#{index}.#{sub_index} #{section.title}<br/>"
        section.subsections.each do |subsection|
          output += "#{index}.#{sub_index}.#{sub_sub_index} #{subsection.title}<br/>"
          sub_sub_index += 1
        end
        sub_index += 1
        sub_sub_index = 1
      end
      index += 1
      sub_index = 1
    end
    output
  end
end
