$: << File.expand_path(File.join(__FILE__, '..'))
require 'base'
require 'open-uri'

data = ''
open("https://www.google.co.jp/trends/explore#cat=0-18-68&geo=JP&cmpt=q&tz=") {|filestream|
  filestream.each_line {|line|
    data << line.encode("UTF-8")
  }
}

puts data.split('trends.Category.setTreeData')[1].split('</script>')[0]

