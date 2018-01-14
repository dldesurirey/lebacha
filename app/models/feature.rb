# == Schema Information
#
# Table name: features
#
#  id         :integer          not null, primary key
#  section_id :integer
#  text       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Feature < ApplicationRecord
  belongs_to :section
end
