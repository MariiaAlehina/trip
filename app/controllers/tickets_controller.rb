class TicketsController< ApplicationController
  before_action :authenticate_user!
  before_action :find_train, only: [:new, :create]
  before_action :find_ticket, only: [:show]

  def index
    @tickets = current_user.tickets
  end

  def new
    @ticket = Ticket.new
  end

  def create
    @ticket = @train.tickets.build(ticket_params)
    @ticket.user = current_user
    if @ticket.save
      redirect_to train_tickets_path
    else
      redirect_to new_train_ticket_path(@train)
    end
  end

  def show
    @ticket = current_user.tickets.find(params[:id])
  end

  private

  def ticket_params
    params.require(:ticket).permit(:user_first_name, :user_last_name)
  end

  def find_train
    @train = Train.find(params[:train_id])
  end
end


