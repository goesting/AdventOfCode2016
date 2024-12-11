p File.read("2016/Day04.txt").split("\n").sum{|room|
  a,test = room.delete(']').split('[')
  *txt,id = a.split('-')
  id=id.to_i
  txt=txt.join

  txt.chars.tally.sort_by{|k,v| [-v,k]}.take(5).map{_1[0]}.join == test ? id : 0
}

p File.read("2016/Day04.txt").split("\n").map{|room|
  a,test = room.delete(']').split('[')
  *txt,id = a.split('-')
  id=id.to_i
  txt=txt.join

  [txt.chars.map{|c| (((c.ord + (id%26)-96)%26)+96).chr}.join,id]
}.select{|txt,id| txt.include?("north")}
