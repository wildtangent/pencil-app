class Lead < ApplicationRecord

  belongs_to :user

  validates :first_name, :last_name, :phone, presence: true
  validates :email, presence: true, email: true

  before_create :set_signed_up_at

  def set_signed_up_at
    self.signed_up_at = Time.now
  end
end
