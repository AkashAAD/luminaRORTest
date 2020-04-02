#rvm use 2.5.1
records = [{ id: 1, title: "heading1", heading_level: 0 },
  { id: 2, title: "heading2", heading_level: 2 },
  { id: 3, title: "heading3", heading_level: 1 },
  { id: 4, title: "heading4", heading_level: 1 }]

# records = [{ id: 1, title: "heading1", heading_level: 0 },
#   { id: 2, title: "heading2", heading_level: 3 },
#   { id: 3, title: "heading3", heading_level: 4 },
#   { id: 4, title: "heading4", heading_level: 1 },
#   { id: 5, title: "heading5", heading_level: 0 }]


records.each_with_index do |record, index|
  itm = index == 0 ? "1" : "1.#{(1..record[:heading_level]+1).map{|t| "#{index}" }.join('.')}"[0...-2]
  puts "    " * record[:heading_level]  + "#{itm}. #{record[:title]}"
end
