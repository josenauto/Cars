class Car < ActiveRecord::Base
  has_many :parts, dependent: :destroy
  validates :name, presence: true,
                   length: { minimum: 5 }
end
