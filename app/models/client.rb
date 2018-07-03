class Client < ApplicationRecord
  belongs_to :gender
  belongs_to :condition
end
