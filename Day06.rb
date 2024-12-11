p File.read("2016/Day06.txt").split.map{|line| line.chars}.transpose.map{|col| col.tally.sort_by{|c,tal| tal}.last.first}.join
p File.read("2016/Day06.txt").split.map{|line| line.chars}.transpose.map{|col| col.tally.sort_by{|c,tal| tal}.first.first}.join
