module Mammals
  def self.common_mammal_traits
    puts 'Mammals are warm blooded and have vertebrae'
  end

  class CommonTraits
    def feed_young
      puts 'all mammals feed their young with milk'
    end
  end

  class Biped < CommonTraits
    def legs
      puts 'I have two legs'
    end
  end

  class Quadraped < CommonTraits
    def self.legs
      puts 'I have four legs'
    end
  end

end

#
# jeff  = Mammals::Biped.new
# cat = Mammals::Quadraped.new
#
# jeff.legs
# jeff.feed_young
#
# cat.legs
# cat.feed_young
