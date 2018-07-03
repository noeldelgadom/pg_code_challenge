class Client < ApplicationRecord
  belongs_to    :gender
  belongs_to    :condition
  after_save    :set_quote

  def set_quote
    # Base Cost
    q = 100

    # For every 5 years over the age of 18 years old, the base price increases by $20.
    q += (self.age - 18) / 5 * 20

    # Condition
    q = q * (100 + self.condition.increase) / 100.0

    # $12 discount for females
    q -= 12 if self.gender.name == 'Female'

    self.update_attributes!(quote: q) unless self.quote == q
  end
end
