class Bansyakupost < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :sake
  belongs_to :warimono
  belongs_to :onetumami
  belongs_to :twotumami

  validates :sake_name, presence: true
  validates :sake_id, numericality: { other_than: 1 }  
  validates :onetumami_name, presence: true 
  validates :onetumami_id, numericality: { other_than: 1 }

end
