class Book < ApplicationRecord
  # validation
  validates :isbn,
    presence: true,
    uniqueness: { allow_blank: true },
    length: { is: 17, allow_blank: true },
    format: { with: /\A978-4-[0-9]{2,5}-[0-9]{2,5}-[0-9X]\z/, allow_blank: true }
  validates :title,
    presence: true,
    length: { minimum: 1, maximum: 100 }
  validates :price,
    numericality: { only_integer: true, less_than: 10000 }
  validates :publisher,
    inclusion: { in: [ "技術評論社", "翔泳社", "SBクリエイティブ", "日経BP", "森北出版" ] }
end
