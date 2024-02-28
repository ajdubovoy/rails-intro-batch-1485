class PagesController < ApplicationController
  def home
  end

  def about
  end

  def contact
    @members = ["emre", "claire", "toni", "alex"]
    if params[:member]
      # if they typed anything in the searchbar
      @members = @members.select do |member|
        member.include?(params[:member].downcase)
      end
    end
  end
end
