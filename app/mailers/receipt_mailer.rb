class ReceiptMailer < ApplicationMailer

  def receipt_email
    @order = order
    mail(to: @order.email, subject: Thank you for shopping with us! Order # #{@order.id})    
  end
end
