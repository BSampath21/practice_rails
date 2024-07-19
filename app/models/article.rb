class Article < ApplicationRecord
    validates :title, presence: true, length: { minimum: 6, maximum: 100 }
    validates :description, presence: true, length: { minimum: 10, maximum: 250 }
    # validates :accepted_terms, presence: true
#     validates :username, :email, presence: true
#     validates :coupon_code, presence: true, if: :discount_enabled?

#   def discount_enabled?
#     # Implement your condition logic here
#     self.discount_active?
# validates :gender, inclusion: { in: %w(Male Female Other), message: "%{value} is not a valid gender" }
# validates :mobile_number, format: { with: /\A\d{10}\z/, message: "must be a 10-digit number" }
end
 