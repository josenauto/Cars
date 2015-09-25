class Car < ActiveRecord::Base
  has_many :parts
  validates :name, presence: true,
                   length: { minimum: 5 }
end
