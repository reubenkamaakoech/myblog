class Post < ApplicationRecord
    belongs_to :user
    has_many :comments, dependent: :destroy
    belongs_to :category
    accepts_nested_attributes_for :comments, allow_destroy: true, reject_if: proc { |att| att['content'].blank? }
end
