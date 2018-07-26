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
    @words = Word.where(id: params[:id])
    words = Word.find(params[:id]).content.split(';')
    @words_hash = words_hash(words)
  end

  def test
  end

  def exam
  end

  def algorithm
    if params[:lang].to_i == 1
      @lang = " in english is:"
    else
      params[:lang].to_i == 0
      @lang = " w języku polskim to:"
    end
    words = Word.find(params[:id]).content.split(';')
    @words_hash = words_hash(words)
  end

  def score
    words = Word.find(params[:answer][:id]).content.split(';')
    @score = 0
    params[:answer].each do |i|
      if i[0] == i[1]
        @score += 1
      end
    end
    @score = (@score.to_f / (words.length / 2) * 100).to_i

    if params[:answer][:alg].to_i == 1
      Result.new(result: @score, word_id: params[:answer][:id], user_id: current_user.id).save
    end
  end

  def my_result
    @results = Result.where(user_id: current_user)
    @results.each do |result|
      @word = Word.find(result.word_id).name
    end
  end

  private

  def words_hash(words)
    words_hash = {}
    i = 0
    while i < words.length
      words_hash[words[0 + i]] = words[1 + i]
      i += 2
    end
    words_hash
  end
end
