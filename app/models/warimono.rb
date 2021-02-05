class Warimono < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'ストレート' },
    { id: 3, name: 'ロック' },
    { id: 4, name: '水割り' },
    { id: 5, name: 'お湯割り' },
    { id: 6, name: 'お茶割り' },
    { id: 7, name: '炭酸割り' },
    { id: 8, name: 'ジュース割' },
  ]
  include ActiveHash::Associations
  has_many :bansyakupost
end