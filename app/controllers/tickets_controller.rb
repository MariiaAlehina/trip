class TicketsController< ApplicationController
  before_action :authenticate_user!, only: :create

  def show
    @ticket = Ticket.find(params[:id])
  end

  def create
    @ticket = current_user.ticket.new

    if @ticket.save
      redirect_to @ticket
    else
      redirect_to trains_path
    end
  end
end
