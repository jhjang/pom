# encoding: UTF-8

attributes =[
  {
    user_id: 1,
    category: "행동력",
    content: "행동력 컨텐트",
    receiver_id: 2
  },
  {
    user_id: 2,
    category: "선동력",
    content: "선동력 컨텐트",
    receiver_id: 1
  },
  {
    user_id: 2,
    category: "필력",
    content: "필력 컨텐트",
    receiver_id: 1
  },
  {
    user_id: 1,
    category: "기력",
    content: "기력 컨텐트",
    receiver_id: 2
  },
]

attributes.each do |a|
  Comment.create!(a)
end
