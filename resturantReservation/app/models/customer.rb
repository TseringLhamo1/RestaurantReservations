class Customer < ApplicationRecord

validates :first_name, length: {minimum: 2}, format: {with: /\A^[a-z0-9A-Z ]*\z/, :message => "cannot contain any numbers or special characters."}

validates :last_name, length: {minimum: 2},format: {with: /\A^[a-z0-9A-Z ]*\z/, :message => "cannot contain any numbers or special characters."}


validates :date_and_time, comparison: {greater_than: DateTime.now,  message: " must be later than now."

}

=begin
I tried to get the number of rows with the same datetime as the form the employee is trying to submit, and if its equal or over 40 rows (I planned for my database to have 10 tables with 4 seats), I would show an error that says that all seats are full for that day. However, I was unable to do that. I did try this: but it didn't work.

count = 0;

Customer.where( "date_and_time" == :date_and_time).find_each do |i|
    count += 1
  end

  if count>=40  
    #error message
  end
=end

end
