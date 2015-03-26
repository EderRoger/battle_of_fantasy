require 'spec_helper'

describe Character do

    let(:hero) do
      hero = Character.new(40, 60)
    end

    it 'lost_attack' do
      expect(hero.attack_by_luck_factor(0).point).to eq(0)
    end

    it 'normal_attack_cause_20_percent_of_damage' do
       expect(hero.attack_by_luck_factor(40).point).to eq(20)
    end
end
