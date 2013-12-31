require 'coveralls'
Coveralls.wear!
require "fukayatsu/version"
require 'yaml'

module Fukayatsu
  class Core
    def initialize
      spec     = Gem::Specification.find_by_name("fukayatsu")
      gem_root = spec.gem_dir
      @attrs   = YAML.load_file("#{gem_root}/config/fukayatsu.yml")
    end

    def method_missing(name, *args, &block)
      name = name.to_s

      if value = @attrs[name]
        return value
      end

      case name
      when /^love_(.+)\?$/
        @attrs['love'].include?($1)
      when /^have_(.+)\?$/
        @attrs['have'].include?($1)
      when /^(.+)\?$/
        @attrs['is'].include?($1)
      else
        super
      end
    end
  end
end
