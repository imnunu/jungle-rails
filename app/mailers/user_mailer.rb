class UserMailer < ApplicationMailer
    default from: 'no-reply@jungle.com'
 

    def order_confirmation(order)
    @order = order
    mail(to: @order.email, subject: 'Your order # #{order.id} had been confirmed')
  end
  
end
