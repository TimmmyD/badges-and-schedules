def badge_maker(name)
    return "Hello, my name is #{name}."
end

def batch_badge_creator(names)
    badge_messages = []
    names.each do |name|
        badge_messages << badge_maker(name) 
    end
    return badge_messages
end

def assign_rooms(speakers)
    new_list = [] 
    speakers.each do |speaker|
        new_list << "Hello, #{speaker}! You'll be assigned to room #{speakers.index(speaker) + 1}!"
    end
    return new_list
end

def printer(attendees)
    badge_messages = batch_badge_creator(attendees) 
    badge_messages.each do |badge|
        puts badge
    end
    room_assignments = assign_rooms(attendees)
    room_assignments.each do |assignment|
        puts assignment
    end
end
