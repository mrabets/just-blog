class StaticPagesController < ApplicationController
  skip_before_action :authenticate_user!, :only => [:home, :about, :help, :contact]

  def home
  end

  def about
  end

  def help
  end

  def contact
  end
end
