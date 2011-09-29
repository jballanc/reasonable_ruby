def reveal_base(&block)
  block.binding.eval("puts self; puts self.class")
end

require "./#{ARGV[0].downcase}"
reveal_base(&eval("#{ARGV[0]}::Base"))


