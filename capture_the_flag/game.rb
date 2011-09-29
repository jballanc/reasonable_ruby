class Game
  def initialize(klass)
    @klass = klass
    unless @klass::Base.kind_of? Proc
      raise RuntimeError, "CHEATER!"
    end
  end

  def play
    @klass::Base.binding.eval <<-END
      def flag
        puts "CAPTURED!!!"
      end
    END

    @klass.new.flag
  end
end

require "./#{ARGV[0].downcase}"

Game.new(eval(ARGV[0])).play


