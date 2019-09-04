class Guidance < ApplicationRecord
  belongs_to :system
  has_many :instructions, inverse_of: :guidance, dependent: :destroy
  validates :title, presence: true, length: { maximum: 30}, uniqueness: true

  accepts_nested_attributes_for :instructions, reject_if: :all_blank, allow_destroy: true
end
 