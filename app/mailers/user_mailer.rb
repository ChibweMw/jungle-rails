class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def order_receipt_email(order)
    @order = order
    mail(to: @order.email, subject: @order.id)
  end
end
