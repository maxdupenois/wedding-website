class HomeController < ApplicationController
  def index
    render :index, locals: { rsvp: rsvp }
  end

  private

  def rsvp
    Rsvp.find(params[:rsvp]) if params[:rsvp]
  end
end
