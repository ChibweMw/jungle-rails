class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def order_receipt_email(order)
    @order = order
    mail(to: @order.email, subject:"Thanks for your order! (##{@order.id})")
  end
end
