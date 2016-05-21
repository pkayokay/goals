class Task < ActiveRecord::Base
  validates :item, presence: true, length: { maximum: 20, minimum: 7 }
end
