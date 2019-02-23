class Admin::DashboardController < ApplicationController

  http_basic_authenticate_with name: 'admin', password: 'pass'
  def show
  end
end
