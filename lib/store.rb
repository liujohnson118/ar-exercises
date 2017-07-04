class Store < ActiveRecord::Base
  has_many:employees
  validates :name, presence:true, length:{minimum:3}
  validates :name, uniqueness:true
  validates :annual_revenue, presence:true
  validates :mens_apparel, inclusion: { in: [true, false] }
  validates :womens_apparel, inclusion: { in: [true, false] }
  validate :apparel_check, :revenue_check
  before_destroy :destroy_check
  def apparel_check
    if !(womens_apparel || mens_apparel)
      errors.add('You need to sell at least 1 type of apparel')
    end
  end
  def revenue_check
    if annual_revenue<0
      errors.add('You make too little money')
    end
  end
  private
  def destroy_check
    ret=false
    if(self.employees.length<1)
      ret=true
    else
      ret=false
    end
  end
end
