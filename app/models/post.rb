class Post < ApplicationRecord
    belongs_to :user
    belongs_to :category
    has_many :comments, dependent: :destroy
    accepts_nested_attributes_for :comments, allow_destroy: true, reject_if: proc { |att| att['content'].blank? }
end
