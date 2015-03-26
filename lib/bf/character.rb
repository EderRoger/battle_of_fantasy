require_relative 'luck'

class Character
  include Luck

  attr_accessor :energy, :power

  def initialize(energy, power)
    @energy = energy
    @power = power
  end

  def attack_by_luck_factor(factor)
    get_attack_power(factor)
  end
end
