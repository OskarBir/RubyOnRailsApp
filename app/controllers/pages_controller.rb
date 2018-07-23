class PagesController < ApplicationController
  def index
    @categories = Category.all
  end

  def contact
  end

  def about
  end

  def subcategory_list
     @subcategories = Subcategory.where(category_id: params[:id])
  end

  def word_list
    @words = Word.where(subcategory_id: params[:id])
  end

  def word
    @sets = Word.where(id: params[:id])
  end

  def test
  end

  def exam
  end

  def algorithm
  end

  def score

  end
end
