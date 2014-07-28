class Content < ActiveRecord::Base
  belongs_to :book
  has_many :sections, dependent: :destroy
  accepts_nested_attributes_for :sections, reject_if: :all_blank, allow_destroy: true
  validates_presence_of :content

  def self.print_contents(contents)
    index = 1
    sub_index = 1
    sub_sub_index = 1
    output = "<div class='bs-callout bs-callout-info'>"
    contents.each do |content|
      output += "<div>#{index}. #{content.content}</div>"
      content.sections.each do |section|
        output += "<div class='tab-1'>#{index}.#{sub_index} #{section.title}</div>"
        section.subsections.each do |subsection|
          output += "<div class='tab-2'>#{index}.#{sub_index}.#{sub_sub_index} #{subsection.title}</div>"
          sub_sub_index += 1
        end
        sub_index += 1
        sub_sub_index = 1
      end
      index += 1
      sub_index = 1
    end
    output += '</div>'
  end
end
