class RestaurantsImporter

  def self.import 
    ice_cream = Tag.create(name: "ice cream")
    icecream = Tag.create(name: "icecream")
    cake = Tag.create(name: "cake")
    cheesecake = Tag.create(name: "cheesecake")
    cheese_cake = Tag.create(name: "cheese cake")
    frozen_yogurt = Tag.create(name: "frozen yogurt")
    froyo = Tag.create(name: "froyo")
    brownies = Tag.create(name: "brownies")
    bubble_tea = Tag.create(name: "bubble tea")
    bubbletea = Tag.create(name: "bubbletea")
    boba = Tag.create(name: "boba")
    chocolate = Tag.create(name: "chocolate")
    matcha = Tag.create(name: "matcha")
    baked_goods = Tag.create(name: "baked goods")

    r1 = Restaurant.create(name:'Bang Bang Ice Cream & Bakery', address: '93 Ossington Avenue
Toronto, ON M6J 2Z2', price_range:'Average', img_1: "http://www.blogto.com/listings/bakery/upload/2014/06/20140606-bangbang590-11.jpg", img_2: "http://www.blogto.com/upload/2016/04/20160423-bangbang.jpg", img_3: "http://www.seriouseats.com/images/20100329-jenis-ice-cream-pints.jpg")
    r1.tags << ice_cream
    r1.tags << icecream
    r1.tags << baked_goods

    r2 = Restaurant.create(name: 'deKEFIR', address:'333 Bay Street', price_range: 'Average', img_1: "http://www.blogto.com/listings/restaurants/upload/2011/06/20110615-dekefir07.jpg", img_2: "http://www.blogto.com/listings/restaurants/upload/2011/06/20110615-dekefir01.jpg", img_3: "https://s-media-cache-ak0.pinimg.com/736x/53/58/45/535845403fc833224b68cb4e7abb1edd.jpg")
    r2.tags << ice_cream
    r2.tags << icecream
    r2.tags << froyo
    r2.tags << frozen_yogurt

    r3 = Restaurant.create(name: 'Kekou', address: '394 Queen Street W
Toronto, ON M5V 2A6', price_range: 'Cheap', img_1: "http://www.blogto.com/listings/restaurants/upload/2013/08/20130813-kekoe-4-2.jpg", img_2: "http://foodgressing.com/wp-content/uploads/2016/01/Kekou-Gelato-Toronto-Queen-Mango.jpg", img_3: "https://s3-media4.fl.yelpcdn.com/bphoto/C_dVu5hzJE1DPkPeyjQaLw/o.jpg")
    r3.tags << ice_cream
    r3.tags << icecream

    r4= Restaurant.create(name: 'Bakerbots Baking', address:'205 Delaware Avenue
Toronto, ON M6H 2T4
', price_range: 'Average', img_1: "https://anngagno.files.wordpress.com/2012/11/img_5865.jpg", img_2: "https://s3-media3.fl.yelpcdn.com/bphoto/dKnhTTw_vKiqCdgqXd6oNg/o.jpg", img_3: "http://www.blogto.com/listings/bakery/upload/2014/06/20140606-bangbang590-12.jpg")
    r4.tags << cake 
    r4.tags << brownies
    r4.tags << baked_goods

   r5 = Restaurant.create(name:'Millie Patisserie & Creamery', address: '12 Oxley Street
Unit 101 Toronto, ON M5V 3P7', price_range: 'Average', img_1: "http://www.blogto.com/listings/bakery/upload/2015/08/20150821-590-GreenTeaCrepe.jpg", img_2: "http://www.blogto.com/listings/bakery/upload/2015/08/20150821-590-GelatoSandwich.jpg", img_3: "https://s-media-cache-ak0.pinimg.com/736x/c8/fb/66/c8fb6656db45e14440b16b1a60db0a19.jpg")
   r5.tags << cake
   r5.tags << ice_cream
   r5.tags << icecream
   r5.tags << cheesecake
   r5.tags << cheese_cake
   r5.tags << baked_goods

    r6 = Restaurant.create(name: 'Fugo Desserts', address:'205 Dundas Street W
Toronto, ON M5G 1C8', price_range:' Cheap', img_1: "http://www.blogto.com/listings/restaurants/upload/2016/06/20160621-fugo590-08.jpg", img_2: "http://torontodotcomassets.s3.amazonaws.com/wp-content/uploads/2016/06/New-Ice-Cream-Fugo2.jpg", img_3:"http://photos1.meetupstatic.com/photos/event/d/1/b/a/600_450713690.jpeg" )
    r6.tags << ice_cream
    r6.tags << icecream

    r7 = Restaurant.create(name: 'Nadège Patisserie', address:'780 Queen Street W
Toronto, ON M6J 1G2', price_range:'Expensive', img_1:"http://67.media.tumblr.com/tumblr_m5iflkgHWr1r2a51zo6_1280.jpg", img_2: "http://2.bp.blogspot.com/-jiE7vaY9LqE/TV3H6D5OZVI/AAAAAAAAYCw/P4Sy_l1MAhE/s550/NP2.jpg", img_3: "http://www.windsorstar.com/cms/binary/6522507.jpg?size=640x420")
    r7.tags << cake
    r7.tags << baked_goods

    r8 = Restaurant.create(name:'Uncle Tetsu’s Japanese Cheesecake', address:'598 Bay Street
Toronto, ON M5G 1M5
', price_range:'cheap', img_1: "http://tastetoronto.ca/wp-content/uploads/2015/03/11024129_1588238301414819_582802716_n.jpg", img_2: "http://tastetoronto.ca/wp-content/uploads/2015/03/11032828_824289340975295_687701951_n.jpg", img_3:"http://rivista-cdn.postcity.com/images/cache/cache_b/cache_e/cache_b/uncletetsumain-e8022beb.jpeg?ver=1469760272&aspectratio=1.5")
    r8.tags << cheesecake
    r8.tags << cake
    r8.tags << baked_goods
    r8.tags << cheese_cake

    r9 = Restaurant.create(name:'Jule', address: '20 Carlton Street
Toronto, ON M5B 2H5', price_range: 'Average', img_1: "http://www.2pirdesign.com/images/jule6_big.jpg", img_2: "http://www.blogto.com/listings/cafes/upload/2015/12/20151228-590-Jule6.jpg", img_3: "http://www.am-suhaila.com/wp-content/uploads/2014/08/jule2.jpg")
    r9.tags << cake
    r9.tags << cheesecake
    r9.tags << bubble_tea
    r9.tags << cheese_cake
    r9.tags << bubbletea
    r9.tags << boba

    r10 = Restaurant.create(name:'Chatime', address: '132 Dundas Street W
Toronto, ON M5G 1C3
', price_range:'Cheap', img_1:"http://foodgressing.com/wp-content/uploads/2016/02/Chatime-Broadway-Vancouver-Bubbletea.jpg", img_2:"http://images.chickadvisor.com/store/953228/original/default.jpg", img_3:"https://s3.amazonaws.com/Menu_Pic/bbadaa15-1f55-4e4b-985d-eafed2ec99c2_grapefruit_juice.jpg")
    r10.tags << bubble_tea
    r10.tags << bubbletea
    r10.tags << boba

    r11 = Restaurant.create(name:'Formocha', address:'55 Eglinton Avenue E
Toronto, ON M4P 1G8
', price_range:'Cheap', img_1:"https://c2.staticflickr.com/4/3853/19316538445_5c0fc19038_c.jpg", img_2: "http://www.blogto.com/listings/cafes/upload/2013/09/130914-590-6486.jpg", img_3: "http://www.blogto.com/listings/cafes/upload/2013/09/130914-590-6506.jpg")
    r11.tags << bubble_tea
    r11.tags << bubbletea
    r11.tags << boba
    r11.tags << cake

    r12 = Restaurant.create(name:'Nohohon', address:'467 Queen Street W
Toronto, ON M5V 2A9
', price_range: 'Cheap', img_1: "https://s3-media2.fl.yelpcdn.com/bphoto/Q2g9IvRAwn1BAskRoqAQqQ/o.jpg", img_2: "https://b.zmtcdn.com/data/pictures/8/17866278/59ea15e0b20541823f830aa1a5023585_featured_v2.jpg", img_3:"https://s3-media1.fl.yelpcdn.com/bphoto/IvC8V38iiQ6nA_mOb9N9cg/348s.jpg")
    r12.tags << bubble_tea
    r12.tags << matcha

  end

end