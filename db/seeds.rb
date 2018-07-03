Gender.create!(name: 'Male')
Gender.create!(name: 'Female')

Condition.create!(name: 'Allergies')
Condition.create!(name: 'Sleep Apnea')
Condition.create!(name: 'Heart Disease')

Client.create!( name:         'Kelly',
                age:          50,
                gender_id:    2,
                condition_id: 1)

Client.create!( name:         'Josh',
                age:          40,
                gender_id:    1,
                condition_id: 2)

Client.create!( name:         'Brad',
                age:          20,
                gender_id:    1,
                condition_id: 3)
