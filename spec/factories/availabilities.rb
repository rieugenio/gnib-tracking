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

FactoryGirl.define do
  factory :availability do
    cat
    typ
    datetime { rand(0..256).seconds.from_now }
    expired_at nil
  end
end
