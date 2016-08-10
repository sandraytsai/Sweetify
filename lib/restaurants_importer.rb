class RestaurantsImporter

  def self.import 
      ice_cream = Tag.create(name: "ice cream")
      cake = Tag.create(name: "cake")
      cheesecake = Tag.create(name: "cheesecake")
      frozen_yogurt = Tag.create(name: "frozen yogurt")
      brownies = Tag.create(name: "brownies")
      bubble_tea = Tag.create(name: "bubble tea")


        r1 = Restaurant.create(name:'Bang Bang Ice Cream & Bakery', address: '93a Ossington Avenue
Toronto, ON M6J 2Z2', price_range:'Average')
        r1.tags << frozen_yogurt
        r1.tags << ice_cream

        r2 = Restaurant.create(name: 'deKEFIR', address:'333 Bay Street', price_range: 'Average')
        r2.tags << cake
        r2.tags << ice_cream

        r3 = Restaurant.create(name: 'Kekou', address: '394 Queen Street W
Toronto, ON M5V 2A6', price_range: 'Cheap')
        r3.tags << ice_cream

        r4= Restaurant.create(name: 'Bakerbots Baking', address:'205 Delaware Avenue
Toronto, ON M6H 2T4
', price_range: 'Average')
        r4.tags << cake 
        r4.tags << brownies
       r5 = Restaurant.create(name:'Millie Patisserie & Creamery', address: '12 Oxley Street
Unit 101 Toronto, ON M5V 3P7', price_range: 'Average')
       r5.tags << cake
       r5.tags << ice_cream
       r5.tags << cheesecake
        r6 = Restaurant.create(name: 'Fugo Desserts', address:'205 Dundas Street W
Toronto, ON M5G 1C8', price_range:' Cheap')
        r6.tags << ice_cream
        r7 = Restaurant.create(name: 'Nadège Patisserie', address:'780 Queen Street W
Toronto, ON M6J 1G2', price_range:'Expensive')
        r7.tags << cake
        r8 = Restaurant.create(name:'Uncle Tetsu’s Japanese Cheesecake', address:'598 Bay Street
Toronto, ON M5G 1M5
', price_range:'')
        r8.tags << cheesecake
        r8.tags << cake
        r9 = Restaurant.create(name:'Jule', address: '20 Carlton Street
Toronto, ON M5B 2H5', price_range: 'Average')
        r9.tags << cake
        r9.tags << cheesecake
        r9.tags << bubble_tea
        r10 = Restaurant.create(name:'Chatime', address: '132 Dundas Street W
Toronto, ON M5G 1C3
', price_range:'Cheap')
        r10.tags << bubble_tea
        r11 = Restaurant.create(name:'Formocha', address:'55 Eglinton Avenue E
Toronto, ON M4P 1G8
', price_range:'Cheap')
        r11.tags << bubble_tea
        r11.tags << cake
        r12 = Restaurant.create(name:'Nohohon', address:'467 Queen Street W
Toronto, ON M5V 2A9
', price_range: 'Cheap')
        r12.tags << bubble_tea

  end

end