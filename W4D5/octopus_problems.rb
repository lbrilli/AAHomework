fishes = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
#=> "fiiiissshhhhhh"

longest = ''

# fishes.each do |fish|
#     if fish.length > longest.length
#         longest = fish
#     end
# end

# puts longest


def dominant_octopus(fishes)
    return fishes if fishes.length <= 1
    pivot_arr = [fishes.first]
    left_side = fishes[1..-1].select {|el| el.length < fishes.first.length}
    right_side = fishes[1..-1].select {|el| el.length >= fishes.first.length}

    final = dominant_octopus(left_side) + pivot_arr + dominant_octopus(right_side)
    
end

puts dominant_octopus(fishes)[-1]


