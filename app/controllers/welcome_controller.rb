class WelcomeController < ApplicationController
  def index
    @promo_articles = Article.promo
  end
end
