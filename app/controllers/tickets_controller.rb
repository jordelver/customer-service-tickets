class TicketsController < ApplicationController

  def new
    @ticket = Ticket.new
  end

  def create
    @ticket = Ticket.new(ticket_params)

    respond_to do |format|
      if @ticket.save
        format.html { redirect_to new_ticket_url, notice: 'Ticket was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  private

  def ticket_params
    params.require(:ticket).permit(:email, :order_id, :problem, :preferred_solution)
  end
end
