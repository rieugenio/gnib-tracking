# == Schema Information
#
# Table name: availabilities
#
#  id          :integer          not null, primary key
#  cat_id      :integer
#  typ_id      :integer
#  datetime    :datetime
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  external_id :string(255)
#  expired_at  :datetime
#

require 'rails_helper'

RSpec.describe Availability, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
