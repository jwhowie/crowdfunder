class User < ActiveRecord::Base
  has_many :products
  has_many :pledges
end
