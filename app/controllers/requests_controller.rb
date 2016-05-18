class RequestsController < ApplicationController
  def index
    @teacher = Teacher.find(params[:teacher_id])
  end
  def complete
      webpay = WebPay.new(WEBPAY_SECRET_KEY)
      webpay.charge.create(currency: 'jpy', amount: 2000, card: params['webpay-token'])
  end
end
