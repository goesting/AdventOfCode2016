p File.read("2016/Day03.txt").split("\n").sum{|line|
  l=line.split.map(&:to_i)
  l.max*2 - l.sum >= 0 ? 0 : 1
}


p File.read("2016/Day03.txt").split("\n").map{_1.split.map(&:to_i)}.transpose.flatten.each_slice(3).sum{|a,b,c|
  [a,b,c].max*2 - [a,b,c].sum >= 0 ? 0 : 1
}
