require 'rails_helper'

RSpec.describe Owner, type: :model do
  it "has a name" do
    owner = Owner.new
    owner.name = "Joe Burgess"
    expect(owner.name).to eq("Joe Burgess")
  end

  it "has a email" do
    owner = Owner.new
    owner.email = "poop@butt.com"
    expect(owner.email).to eq("poop@butt.com")
  end

  it "has a bio" do
    owner = Owner.new
    owner.bio = "I'm a turd master!"
    expect(owner.bio).to eq("I'm a turd master!")
  end
end