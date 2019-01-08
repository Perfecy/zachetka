require 'prime'
class LabController < ApplicationController
  before_action :signed_in?
  def index
  end

  def number
    @output_mas = []
    @n = params[:input].to_i.abs
    work_mas = Prime.take_while { |p| 2**p - 1 <= @n }
    work_mas.each do |i|
      x = 2**i - 1
      @output_mas << x if Prime.prime?(x)
    end
  end

  def signed_in?
    redirect_to root_path, alert: 'Sign in first' unless current_user
  end
end