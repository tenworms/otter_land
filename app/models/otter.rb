class Otter < ApplicationRecord
  belongs_to :park

  def self.able_to_work
    where(able_to_work: true)
  end
end
