class WelcomeController < ApplicationController
  def index
    @promo_articles = Article.promo
    @recent_articles = Article.not_promo.date.first(9)
    @older_articles = Article.not_promo.date.offset(9)
  end
end
