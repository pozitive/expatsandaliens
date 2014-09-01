class SitemapsController < ApplicationController
  layout nil

  def index
    headers['Content-Type'] = 'application/xml'
    @articles = Article.all
    @pages = Page.all
    respond_to do |format|
      format.xml 
    end
  end
end
