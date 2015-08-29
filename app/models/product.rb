# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  name        :string
#  price       :decimal(, )
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :integer
#  description :text
#  url         :string
#

class Product < ActiveRecord::Base
  belongs_to :category

  delegate :name, to: :category, prefix: true
  attr_accessor :amount

  scope :with_category_id, -> (category_id) { where(category_id: category_id) }
end
