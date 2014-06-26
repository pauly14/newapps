class Contact < ActiveRecord::Base

  attr_accessor :Name, :Email, :Title, :Inquiry
  validates :inquiry, :length => { :in => 10..255 }, :format => { :with => /^\A[a-zA-Z\d ]+\z/, :message => "Only letters allowed",
      :multiline => true}
  validates :Name, :Email, :presence => true
end
