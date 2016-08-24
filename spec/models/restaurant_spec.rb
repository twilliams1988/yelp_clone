require "rails_helper"

describe Restaurant, type: :model do
  it 'is not valid with a name of less than three characters' do
    restaurant = Restaurant.new(name: "kf")
    expect(restaurant).to have(1).error_on(:name)
    expect(restaurant).not_to be_valid
  end

  it "is not valid unless it has a unique name" do
    user = User.create(email: "sus111@sus.com", password: "123345asd")
    Restaurant.create(name: "Moe's Tavern", user_id: user.id)
    restaurant = Restaurant.new(name: "Moe's Tavern", user_id: user.id)
    expect(restaurant).to have(1).error_on(:name)
  end

  it "cannot delete a different user's restaurant" do

  end
end
