item = Item.new(
  genre_id: 1,
  name: '塩焼きそば',
  introduction: 'さっぱりした焼きそばが食べたい！という時にすぐに食べられます。野菜もお肉もたっぷり。',
  price: 600,
  is_active: true,
)
item.image.attach(io: File.open("./app/assets/images/塩焼きそば.jpg"), filename: '塩焼きそば.jpg', content_type: 'image/jpg')
item.save!

item = Item.new(
  genre_id: 1,
  name: 'お雑煮',
  introduction: 'お正月。我が家のお雑煮の味。関東風鶏出汁すまし汁タイプのおいしいお雑煮です。',
  price: 400,
  is_active: true,
)
item.image.attach(io: File.open("./app/assets/images/お雑煮.jpg"), filename: 'お雑煮.jpg', content_type: 'image/jpg')
item.save!

item = Item.new(
  genre_id: 3,
  name: 'アヒージョ',
  introduction: 'ワインととっても合うアヒージョのセット。スキレットで温めればすぐに完成します。',
  price: 600,
  is_active: true,
)
item.image.attach(io: File.open("./app/assets/images/アヒージョ.jpg"), filename: 'アヒージョ.jpg', content_type: 'image/jpg')
item.save!

item = Item.new(
  genre_id: 3,
  name: 'ステーキ',
  introduction: '今日はステーキの気分！そんな時はこちらをどうぞ。すりおろし玉ねぎのステーキソース付きです。。',
  price: 600,
  is_active: true,
)
item.image.attach(io: File.open("./app/assets/images/ステーキ.jpg"), filename: 'ステーキ.jpg', content_type: 'image/jpg')
item.save!