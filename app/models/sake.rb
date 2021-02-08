class Sake < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'ビール' },
    { id: 3, name: 'ウィスキー' },
    { id: 4, name: 'チューハイ' },
    { id: 5, name: 'サワー' },
    { id: 6, name: 'カクテル' },
    { id: 7, name: 'ワイン(赤)' },
    { id: 8, name: 'ワイン(白)' },
    { id: 9, name: 'ワイン(スパークリング)' },
    { id: 10, name: 'ワイン(ロゼ)' },
    { id: 11, name: 'ウォッカ' },
    { id: 12, name: 'ジン' },
    { id: 13, name: 'ラム' },
    { id: 14, name: '焼酎(米)' },
    { id: 15, name: '焼酎(麦)' },
    { id: 16, name: '焼酎(芋)' },
    { id: 17, name: '日本酒' },
    { id: 18, name: 'その他' },
  ]
  include ActiveHash::Associations
  has_many :bansyakupost
end