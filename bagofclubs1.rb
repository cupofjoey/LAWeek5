REQUIRED_BAG_SIZE = 10

available_clubs = [
  :two_iron,
  :three_iron,
  :four_iron,
  :five_iron,
  :six_iron,
  :seven_iron,
  :eight_iron,
  :nine_iron,
  :pitching_wedge,
  :sand_wedge,
  :driver,
  :three_wood,
  :five_wood,
  :seven_wood,
  :putter
]

club_select = available_clubs.sample(REQUIRED_BAG_SIZE)

puts "***Automated Golf Club Advice:***"

club_select.each do |selection|
  puts "Use the #{selection.to_s.gsub("_", " ")}!"
end

puts ""

[
  :driver,
  :pitching_wedge,
  :putter
].each do |x|
  if !club_select.include?(x)
    puts "WARNING! You will be without a #{x.to_s.gsub("_", " ")}"
  end
end
