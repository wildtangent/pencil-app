class Setting < ApplicationRecord
  belongs_to :user

  has_one_attached :logo_image
  has_one_attached :banner

end
