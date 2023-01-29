# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# p Location.create([
#     {
#         name: 'Test location 2'
#     }
# ])

p Project.create([
    {
        name: 'Test project',
        priority: 'Low',
        description: 'Test description',
        supply1: '1',
        supply2: '2',
        supply3: '3',
        supply4: '4',
        supply5: '5',
        supply6: '6',
        supply7: '7',
        supply8: '8',
        supply9: '9',
        supply10: '10',
        estimate: 100,
        start: '1/31/2023',
        completion: '2/28/2023',
        location_id: 1
    }
])