# encoding: UTF-8

attributes =[
  {
    name: "행동력" 
  },
  {
    name: "드립력" 
  },
  {
    name: "섭취력" 
  },
]

attributes.each do |a|
  Category.create!(a)
end
