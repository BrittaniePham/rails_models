class Person < ApplicationRecord
  has_one :contact, dependent: :destroy

  def full_name
    "#{self.first_name} #{self.last_name}"
  end
end
