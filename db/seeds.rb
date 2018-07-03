Gender.create!(name: 'Male')
Gender.create!(name: 'Female')

Condition.create!(name: 'None',           increase: 0)
Condition.create!(name: 'Allergies',      increase: 1)
Condition.create!(name: 'Sleep Apnea',    increase: 6)
Condition.create!(name: 'Heart Disease',  increase: 17)

Client.create!( name:         'Kelly',
                age:          50,
                gender_id:    2,
                condition_id: 2)

Client.create!( name:         'Josh',
                age:          40,
                gender_id:    1,
                condition_id: 3)

Client.create!( name:         'Brad',
                age:          20,
                gender_id:    1,
                condition_id: 4)
