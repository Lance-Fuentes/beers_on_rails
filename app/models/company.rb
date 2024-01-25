class Company < ApplicationRecord
  has_many :beers, dependent: :destroy #if parent/company record is deleted -> the child/beer record is also deleted

  validates :name, presence: true #has to have a name value or else record can not be created
end
