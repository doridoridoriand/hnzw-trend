$: << File.expand_path(File.join(__FILE__, '..'))
require 'base'

module GoogleTrendParser
  data = ''
  open("https://www.google.co.jp/trends/explore#cat=0-18-68&geo=JP&cmpt=q&tz=") {|filestream|
    filestream.each_line {|line|
      data << line.encode("UTF-8")
    }
  }
  json_rough = data.split('trends.Category.setTreeData(')[1].split('</script>')[0]
  DATA = json_rough.rstrip!.chop!.chop!
end
