require 'digest'
inp = File.read("2016/Day05.txt")
md5 = Digest::MD5.new
hex = 'peepeepoopoo'
x=1
res=''
successes = 0
while(successes < 8)
  str = inp + x.to_s
  md5.reset
  md5 << str
  hex = md5.hexdigest
  if hex.start_with?('00000')
    successes +=1
    res += hex[5]
  end
  x+=1
end
puts res

p2password = ['','','','','','','','']
x=1
while(p2password.any?{_1==''})
  str = inp + x.to_s
  md5.reset
  md5 << str
  hex = md5.hexdigest
  if hex.start_with?('00000')
    p2password[hex[5].to_i] = hex[6] if /[0-9]/===hex[5] && hex[5].to_i < 8 && p2password[hex[5].to_i] == ''

  end
  x+=1
end
p p2password.join
