require 'spec_helper'

describe Fukayatsu::Core do
  subject { described_class.new }
  it { expect(subject.name).to eq('fukayatsu') }
end