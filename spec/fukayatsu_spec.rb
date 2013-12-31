require 'spec_helper'

describe Fukayatsu::Core do
  subject { described_class.new }
  it { expect(subject.name).to               eq('fukayatsu') }
  it { expect(subject.email).to              eq('fukayatsu@gmail.com') }
  it { expect(subject.blog).to               eq('http://blog.fukayatsu.com/')}
  it { expect(subject.man?).to               be true }
  it { expect(subject.skilled_tdder?).to     be true }
  it { expect(subject.skilled_architect?).to be true }
  it { expect(subject.love_ruby?).to         be true }
  it { expect(subject.love_coding?).to       be true }
  it { expect(subject.love_sushi?).to        be true }
  it { expect(subject.love_php?).to          be false }
  it { expect(subject.have_android?).to      be true }
  it { expect(subject.have_girlfriend?).to   be true }
end