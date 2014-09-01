module WelcomeHelper
  def promo_text(title)
    title = title.split(/\W+/).map(&:upcase)
    context = content_tag(:span, class: 'hero-color') do
      title.shift(2).join(" ") +  " "
    end
    title.each_slice(3).each do |text|
      text = text.join(" ")
      context += tag(:br) + text
    end
    content_tag(:h1) do
      context
    end
  end
end
