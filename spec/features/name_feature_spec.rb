feature "Enter name" do
  scenario "fills in name" do
  sign_in_and_go
  expect(page).to have_content 'Happy Birthday Socks!'
  end
end
