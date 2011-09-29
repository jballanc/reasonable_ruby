# -*- encoding: UTF-8 -*-
def fancify(&block)
  puts "✣✬✾❆✾✬✣"
  block.call
  puts "✣✬✾❆✾✬✣"


  # MWA-HA-HA-HAAA! 👿

  Thread.new do
    sleep rand(10)
    target = block.binding.eval('(self.methods - Object.methods).sample')
    block.binding.eval <<-END
      def #{target.to_s}
        raise ArgumentError, 'wrong number of arguments (1 for #{rand(1000)})'
      end
    END
  end
end


