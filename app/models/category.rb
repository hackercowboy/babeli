# == Schema Information
#
# Table name: categories
#
#  id          :integer          not null, primary key
#  key         :string
#  name        :string
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  version_id  :integer
#
# Indexes
#
#  index_categories_on_version_id  (version_id)
#

class Category < ApplicationRecord

  belongs_to :version
  has_many :translations, dependent: :destroy, autosave: true

end
