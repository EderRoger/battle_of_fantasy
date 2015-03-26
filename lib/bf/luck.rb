module Luck

  LOST_FACTOR = 0..3
  NORMAL_FACTOR = 4..70
  LUCK_FACTOR = 71..96
  CRITICAL_FACTOR = 97..100
  attr_accessor :power_by_luck

  def get_attack_power(factor)
    # factor =  Random.rand(0..100)
    if LOST_FACTOR.include?(factor)
      @power_by_luck = Power.new(0,'LOST')
    elsif NORMAL_FACTOR.include?(factor)
      @power_by_luck = Power.new(@power/3, 'NORMAL')
    elsif LUCK_FACTOR.include?(factor)
      @power_by_luck = Power.new((@power/3) + (@power/3 * 0.20),'LUCK')
    elsif CRITICAL_FACTOR.include?(factor)
      @power_by_luck = Power.new((@power/3) * 2,'CRITICAL')
    end
  end
end
