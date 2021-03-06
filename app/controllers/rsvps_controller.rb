class RsvpsController < ApplicationController
  http_basic_authenticate_with name: Rails.application.secrets.auth_name,
    password: Rails.application.secrets.auth_password, only: :index

  def index
    expected = (ENV['EXPECTED_RSVP_COUNT'] || 10).to_i
    render :index, locals: {
      rsvps: Rsvp.order('name asc'),
      expected: expected,
      progress: Rsvp.count / expected.to_f * 100
    }
  end

  def new
    render :new, locals: { rsvp: rsvp }
  end

  def create
    if !rsvp.save
      render :new, locals: { rsvp: rsvp }
    else
      redirect_to root_url(rsvp: rsvp.id)
    end
  end

  private

  def rsvp_params
    return {} unless params.key?(:rsvp)
    params.require(:rsvp).permit(:name, :response, :extra)
  end

  def rsvp
    @rsvp ||= Rsvp.new(rsvp_params)
  end
end
