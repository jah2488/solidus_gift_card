Spree::OrderMailer.class_eval do
  def gift_card_email(card_id, order_id)
    @gift_card = Spree::GiftCard.find(card_id)
    @order = Spree::Order.find(order_id)
    subject = "#{@order.store.name} Gift Card"
    @gift_card.update_attribute(:sent_at, Time.zone.now)
    mail(:to => @gift_card.email, :from => from_address, :subject => subject)
  end
end
