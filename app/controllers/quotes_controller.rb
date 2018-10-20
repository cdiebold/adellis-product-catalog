class QuotesController < ApplicationController
  def new
    @quote = Quote.new
  end

  def create
  end

  private

  def quote_params
    params.require(:quote).permit(:first_name, :last_name, :company_name, :email_address,
                                  :phone_number, :preferred_contact_method, :nsn,
                                  :part_number, :quantity, :condition, :priority)
  end
end
