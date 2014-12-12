Eventtype.create!([
  {id: 1, event_type: "Default"},
  {id: 2, event_type: "Training"},
  {id: 3, event_type: "Singing"},
  {id: 4, event_type: "Dancing"},
  {id: 5, event_type: "Cooking"},
  {id: 6, event_type: "Panting"},
  {id: 7, event_type: "Teaching"},
  {id: 8, event_type: "Reading"},
  {id: 9, event_type: "Playing"},
  {id: 10, event_type: "Swimming"}
])


Eventtopic.create!([
 {id: 1, event_topic: "Default"},
 {id: 2, event_topic: "Music"},
 {id: 3, event_topic: "Cricket"},
 {id: 4, event_topic: "Books"},
 {id: 5, event_topic: "Foods"},
 {id: 6, event_topic: "Sounds"},
 {id: 7, event_topic: "Boat"},
 {id: 8, event_topic: "Air"},
 {id: 9, event_topic: "Cloths"},
 {id: 10, event_topic: "others"}
])

Role.create!([
 {id: 1, name: "superadmin"},
 {id: 2, name: "admin"},
 {id: 3, name: "user"}
])