class Item < ActiveRecord::Base
  belongs_to :user

  # validates :description,
  # presence: true,
  # length: {maximum: 200},
  # on: :create,
  # allow_nil: false

    validates :description, length: { maximum: 200 }

end