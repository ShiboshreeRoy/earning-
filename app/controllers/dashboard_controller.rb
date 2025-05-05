class DashboardController < ApplicationController
  before_action :authenticate_user!

  def index
    @incomes = current_user.incomes
    @total_income = @incomes.sum(:amount)
  end
end
