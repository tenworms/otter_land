class Otter < ApplicationRecord
  belongs_to :park

  def self.able_to_work
    where(able_to_work: true)
  end

  def self.alphabetical
    order(:otter_name)
  end
end
