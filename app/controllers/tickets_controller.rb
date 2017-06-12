class TicketsController < ApplicationController
  before_action :retrieve_orders, only: [:new, :create]

  def new
    @orders = Order.all
    @ticket = Ticket.new
  end

  def create
    @ticket = Ticket.new(ticket_params)

    respond_to do |format|
      if @ticket.valid?
        @ticket.email = find_order.email
        @ticket.save

        format.html { redirect_to ticket_thanks_url }
      else
        format.html { render :new }
      end
    end
  end

  private

  def ticket_params
    params.require(:ticket).permit(:order_id, :problem, :preferred_solution)
  end

  def find_order
    Order.find(params[:ticket][:order_id])
  end
end
