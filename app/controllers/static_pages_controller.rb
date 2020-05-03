class StaticPagesController < ApplicationController
  def home
  end

  def help
  end

  def about
    @params = (params.to_yaml)
  end

  def contact
  end

end
