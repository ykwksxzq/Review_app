class Shop < ApplicationRecord

  has_many :post, dependent: :destroy

end
