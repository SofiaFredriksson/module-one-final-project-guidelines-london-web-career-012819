Wine.delete_all
Winery.delete_all
Taster.delete_all
Review.delete_all

CSV.foreach('db/winemag-first20.csv', headers: true) do |row|
  temp = row.to_h
  winery = Winery.create(province: temp["province"], region_1: temp["region_1"], region_2: temp["region_2"], name: temp["winery"])
  wine = Wine.create(title: temp["title"], country: temp["country"], designation: temp["designation"], price: temp["price"], variety: temp["variety"], winery_id: winery.id)
  taster = Taster.create(name: temp["taster_name"], twitter_handle: temp["taster_twitter_handle"])
  review = Review.create(description: temp["description"], points: temp["points"], taster_id: taster.id, wine_id: wine.id)
end
