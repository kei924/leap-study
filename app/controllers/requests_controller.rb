class RequestsController < ApplicationController
  def index
    @teacher = Teacher.find(params[:teacher_id])
  end
  def create
    
  end
  def complete
      webpay = WebPay.new(WEBPAY_SECRET_KEY)
      webpay.charge.create(currency: 'jpy', amount: 2000, card: params['webpay-token'])
      @teacher = Teacher.find(params[:teacher_id])
      @student = current_student
  end
end