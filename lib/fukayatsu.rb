require "fukayatsu/version"

module Fukayatsu
  class Core
    def initialize
      @name = 'fukayatsu'
    end
    attr_reader :name
  end
end
