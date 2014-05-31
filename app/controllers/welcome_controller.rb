class WelcomeController < ApplicationController
  def index
    @promo_articles = Article.promo
    @recent_articles = Article.not_promo.date.first(6)
  end
end
