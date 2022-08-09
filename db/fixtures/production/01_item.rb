item = Item.new(
  genre_id: 1,
  name: '塩焼きそば',
  introduction: 'さっぱりした焼きそばが食べたい！という時にすぐに食べられます。野菜もお肉もたっぷり。',
  price: 600,
  is_active: true,
)
item.image.attach(io: File.open("./app/assets/images/塩焼きそば.jpg"), filename: '塩焼きそば.jpg', content_type: 'image/jpg')
item.save!