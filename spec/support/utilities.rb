def full_title(page_title)
  base_title = "Ruby on Rails Tutorial Sample App"
  if page_title.empty?
    base_title
  else
    "#{base_title} | #{page_title}"
  end
end

def sign_in(user)
  fill_in "Email", with: user.email.upcase
  fill_in "Password", with: user.password
  click_button "Sign in"

  # Capybaraを使用していない場合にもサインインする。
  cookies[:remember_token] = user.remember_token
end
