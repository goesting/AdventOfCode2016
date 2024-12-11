
p File.read("2016/Day02.txt").split("\n").map{|line|
nr = 5
line.chars{|c|
  if c == ?U
    nr = nr-3 unless nr<3
  elsif c==?D
    nr = nr+3 unless nr>6
  elsif c==?L
    nr = nr-1 unless nr%3==1
  elsif c==?R
    nr = nr+1 unless nr%3==0
  else
    warn :unrecognized
  end
}
nr
}.join


p File.read("2016/Day02.txt").split("\n").map{|line|
nr = 5
line.chars{|c|
  if c == ?U
    nr = nr-(4-2*((8-nr).abs/5)) unless [1,2,4,5,9].include? nr
  elsif c==?D
    nr = nr+(4-2*((6-nr).abs/5)) unless [5,9,10,12,13].include? nr
  elsif c==?L
    nr = nr-1   unless [1,2,5,10,13].include? nr
  elsif c==?R
    nr = nr+1 unless [1,4,9,12,13].include? nr
  else
    warn :unrecognized
  end
}
nr
}.map{|i| i.to_s(16)}.join
