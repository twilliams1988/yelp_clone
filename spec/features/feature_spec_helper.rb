def sign_up(user: "test@example.com", password: "testtest")
  visit("/")
  click_link("Sign up")
  fill_in("Email", with: user)
  fill_in("Password", with: password)
  fill_in("Password confirmation", with: password)
  click_button("Sign up")
end

def add_restaurant(name: "KFC", description: "Yum")
  click_link "Add a restaurant"
  fill_in "Name", with: name
  fill_in "Description", with: description
  click_button "Create Restaurant"
end
