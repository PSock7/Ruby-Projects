class Post < ApplicationRecord
  #------Some properties ------------
  #presence permit to check that values are not nil a
  # Length e.g length:  { in: 3..20} 3 to 20 characters
  # uniqueness field is unique
  # acceptance if case is accepted
  # confirmation important in password system
  # on
  # allow_nil
  # strict
  # format to manage regular expression format : {with: /^[a-ZA-Z] +\z/ }
  validates :name, presence: { message: "Ne doit pas etre vide"}

  def as_json(options = nil)
    super(only: [:name, :id])
  end
end