class Store < ActiveRecord::Base
  validates:name, presence:true
  validates:annual_revenue, presence:true
  validates:mens_apparel, inclusion: { in: [true, false] }
  validates:womens_apparel, inclusion: { in: [true, false] }
end
