module WelcomeHelper
  def promo_text(title)
    matchData = title.match(/(^\w+\W+\w+\W+)(\w+\W+\w+\W+)(\w+\W+\w+\W+)/) || 
      title.match(/(^\w+\W+\w+\W+)(\w+\W+\w+\W+)/) || title.match(/(^\w+\W+)/)

    span = content_tag(:span, class: 'hero-color') do
      matchData[1]
    end
    second = tag(:br) + matchData[2]
    third = tag(:br) + matchData[3]
    content_tag(:h1) do
      span + second + third
    end
  end
end
