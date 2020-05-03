module UsersHelper

  def hello(user)
    name = user.name
    email = user.email
    { name: name, email: email }
  end

  def gravatar_for(user)
    gravatar_id = Digest::MD5::hexdigest("tooneynta92@gmail.com")
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end
end
