class Comment < ApplicationRecord
    belongs_to :user, foreign_key: 'user_id'
    belongs_to :prototype, foreign_key: 'prototype_id'
    validates :text,  presence: true
end