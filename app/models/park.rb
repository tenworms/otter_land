class Park < ApplicationRecord
  has_many :otters
  validates :title, presence: true
  validates :hiring_workers, inclusion: [true, false]
  validates :number_of_workers, presence: true

  def self.sort_by_new
    order(created_at: :desc)
  end

  def otters_count
    otters.count
  end
end
