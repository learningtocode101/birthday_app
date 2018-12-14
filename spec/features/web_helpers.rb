def sign_in_and_go
  visit("/")
  fill_in :name, with: "Socks"
  fill_in :day, with: "23"
  select 'January', from: 'month'
  click_button 'Go'
end
