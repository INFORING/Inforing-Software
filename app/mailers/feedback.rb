class Feedback < ActionMailer::Base

  def feedback(name, email, title, text)
  	@name = name
  	@title = title
  	@email = email
  	@text = text
  	mail(to: "nameless73@mail.ru", subject: "#{title}")
  end

  def order(name, contacts, description, order)
  	@name = name
  	@contacts = contacts
  	@order = order
  	@description = description
  	mail(to: "nameless73@mail.ru", subject: "заказ #{order}")
  end
end
