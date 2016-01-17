require 'pry'

def badge_maker(speaker)
  return "Hello, my name is #{speaker}."
end

def batch_badge_creator(speaker)
  list_of_badge_messages = []
  speaker.each { |speaker_name| list_of_badge_messages << badge_maker(speaker_name)}
  return list_of_badge_messages
end

def assign_rooms(attendees) 
    nested_room_assignments = []
    attendees.each.with_index(1) do |value, index| 
    nested_room_assignments << ["Hello, #{value}! You'll be assigned to room #{index}!"]
    room_assignments = nested_room_assignments [1..7]
  end
  return room_assignments
end

def printer(attendees)
    batch_badge_creator(attendees).each { |item| puts (item)}
    assign_rooms(attendees).each { |item| puts (item)}
end