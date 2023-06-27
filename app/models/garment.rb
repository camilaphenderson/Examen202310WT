class Garment < ApplicationRecord
  belongs_to :user

  #validaciones 
  
  validates :name, :brand, :size, :date_of_purchase, presence: true
  validates :size, inclusion: { in: %w[S M L] }
  validate :date_of_purchase_cannot_be_in_the_future

  private

  def date_of_purchase_cannot_be_in_the_future
    errors.add(:date_of_purchase, "can't be in the future") if date_of_purchase && date_of_purchase > Date.today
  end
end
