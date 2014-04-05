class Contact < ActiveRecord::Base
  has_no_table # specific to activerecord-tableless gem

  # dummy 'columns' == attributes from the activerecord-tableless gem
  column :name, :string
  column :email, :string
  column :content, :string

  validates_presence_of :name
  validates_presence_of :email
  validates_presence_of :content
  validates :email, format: { with: /\A[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}\z/i, message: "must be a valid email" }
  validates_length_of :content, maximum: 500
end
