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

require 'test_helper'

class CategoryTest < ActiveSupport::TestCase

  should belong_to(:version)
  should have_many(:translations).dependent(:destroy)

  test 'should be created by factory girl' do
    FactoryGirl.create(:category)
  end

end
