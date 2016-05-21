class Task < ActiveRecord::Base
  validates :item, presence: true, length: { maximum: 50, minimum: 7 }
end
