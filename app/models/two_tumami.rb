class Two_tumami < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'お菓子' },
    { id: 3, name: '乾き物' },
    { id: 4, name: '燻製' },
    { id: 5, name: '缶詰' },
    { id: 6, name: 'チーズ' },
    { id: 7, name: 'ハム・ソーセージ' },
    { id: 8, name: '刺し身' },
    { id: 9, name: '珍味' },
    { id: 10, name: '揚げ物' },
    { id: 11, name: '野菜・サラダ' },
    { id: 12, name: '創作' },
  ]

  include ActiveHash::Associations
  has_many :bansyakupost
end