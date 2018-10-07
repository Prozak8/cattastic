class CatsController < ApplicationController 
  before_action :load_categories
  before_action :set_cats
  before_action :upvote, :downvote, except: :load_categories
 
  def index
  end

  def upvote
    @cat.upvote_from current_user
    redirect_to root_path
  end

  def downvote
    @cat.downvote_from current_user
    redirect_to root_path
  end

  private

  def set_cats
    @cats = FetchCatService.get_cat_image
    @cats.each do |cat|
      cat= Cat.create(url: cat['url']) unless Cat.exists?(url: cat['url'])
    end
  end
end