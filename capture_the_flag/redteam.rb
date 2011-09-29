class RedTeam
  def flag
    puts "Red Team roxorz!!!"
  end

  def self.hidden_base
    puts "Stealth is the key!"
  end

  Base = method(:hidden_base).to_proc
end


