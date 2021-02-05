class Bansyakupost < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :sake
  belongs_to :warimono
  belongs_to :one_tumami
  belongs_to :two_tumami

  validates :sake_name, presence: true
  validates :sake_id, numericality: { other_than: 1 }  
  validates :one_tumami_name, presence: true 
  validates :one_tumami_id, numericality: { other_than: 1 }

end
