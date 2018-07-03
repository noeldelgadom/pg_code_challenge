class Client < ApplicationRecord
  belongs_to    :gender
  belongs_to    :condition
  after_save    :set_quote

  def set_quote
    # The base cost of insurance is $100 annually.
    q = 100

    # For every 5 years over the age of 18 years old, the base price increases by $20. In this calculation, life insurance is only available for people over the age of 18.
    q += 20 * (self.age - 18)/5

    q = q
    # Condition | Relative cost increase
    # Allergies | 1%
    # Sleep Apnea | 6%
    # Heart Disease | 17%

    # Females have a longer life expectancy, so receive a $12 discount on the final price.

    puts '---------'
    puts '---------'
    puts q
    puts '---------'
    puts '---------'

    self.quote = q
  end
end
