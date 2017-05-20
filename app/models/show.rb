class Show < ApplicationRecord
  belongs_to :user
  has_many :characters

  accepts_nested_attributes_for :characters, reject_if: proc { |character| character['name'].blank? }

  validates :name, presence: true
  validates :user_id, presence: true

end
