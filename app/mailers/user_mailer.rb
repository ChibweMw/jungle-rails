class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def order_receipt_email(order)
    @order = order
    puts "==================================="
    puts "WELCOME", @order
    puts "==================================="

    # @url = '/orders/:id'
    mail(to: @order.email, subject: @order.id)
  end
end
