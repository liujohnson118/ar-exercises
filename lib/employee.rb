class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, length:{minimum:1}
  validates :last_name, length:{minimum:1}
  validates :store, presence:true
  validate :hourly_rate_limited
  def hourly_rate_limited
    if hourly_rate<40 || hourly_rate>200
      errors.add(:hourly_rate,'not in range specified')
    end
  end
end
