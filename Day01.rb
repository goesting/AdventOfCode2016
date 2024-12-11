facing = 0
stepsTaken = [0,0,0,0]
File.read("2016/Day01.txt").split(", ").each{|dir|
  if dir[0] == ?R
    facing = (facing+1)%4
  else
    facing = (facing-1)%4
  end
  stepsTaken[facing] += dir[1..].to_i

}
p (stepsTaken[0]-stepsTaken[2]).abs + (+stepsTaken[1]-stepsTaken[3]).abs


visited = {[0,0] => true}
x=y=0
facing = 0
directions = [[1,0],[0,1],[-1,0],[0,-1]]
File.read("2016/Day01.txt").split(", ").each{|dir|
  if dir[0] == ?R
    facing = (facing+1)%4
  else
    facing = (facing-1)%4
  end
  dir[1..].to_i.times{
    x,y=[x,y].zip(directions[facing]).map(&:sum)
    if visited[[x,y]]
      puts x.abs+y.abs
      exit
    end
    visited[[x,y]]=true
  }
}
