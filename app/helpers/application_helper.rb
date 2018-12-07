module ApplicationHelper
    def gravatar_for(user)
        puts user.email.downcase
        gravatar_id= Digest::MD5::hexdigest(user.email.downcase)
        puts gravatar_id
        gravatar_url="https://secure.gravatar.com/avatar/#{gravatar_id}"
        puts gravatar_url
        image_tag(gravatar_url, alt: user.username, class: "img-circle")
        
    end
end
