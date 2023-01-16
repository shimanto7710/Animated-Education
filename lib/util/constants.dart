class SharedVariable {
  int activeUser = 1;
  static String getBaseUrl({int activeUser = 1}) {
    return 'https://${SharedConst.userNameList[activeUser]}.github.io/history_collaborative_server/';
  }
}

class SharedConst {
  static const List<String> userNameList = ['mahidul-islam'];
}

class JsonPath {
  static const String json_home_page = 'assets/json/home_page.json';
}

class AssetConst {
  static const String icUser = 'assets/user.png';
  static const String icSplash = 'assets/splash.png';
  static const String icMark = 'assets/].png';
  static const String icFlag = 'assets/flag.png';
  static const String icGmail = 'assets/Gmail.png';
  static const String icFacebook = 'assets/Facebook.png';
  static const String icGoogle = 'assets/Google.png';
  static const String icRectangle = 'assets/Rectangle.png';
  static const String icGroup = 'assets/Group.png';
  static const String icOffer = 'assets/offer.png';
  static const String icMap = 'assets/map.png';
  static const String icFastfood = 'assets/fastfood.png';
  static const String icAd = 'assets/ad.png';
  static const String icSearch = 'assets/Search.png';
  static const String icNotification = 'assets/Notification.png';
  static const String icgroup = 'assets/Group.png';
  static const String icShop = 'assets/shop.png';
  static const String icWecon = 'assets/wecon.png';
  static const String icDp = 'assets/dp.png';
  static const String icMosque = 'assets/mosque.png';
  static const String icNews = 'assets/news.png';
  static const String icCompass = 'assets/compass.png';
  static const String icDiscount = 'assets/discount.png';
  static const String icHome = 'assets/home.png';
  static const String icMenu = 'assets/menu.png';
  static const String icUser_s = 'assets/user_s.png';
  static const String icOffer_banner = 'assets/offer_banner.png';
  static const String icAct_group = 'assets/act_group.png';
  static const String icLoading = 'assets/loading.png';
  static const String icSlider_img = 'assets/slider_img.png';
  static const String icSlider_img_two = 'assets/slider_img_two.png';
  static const String icTop_offers = 'assets/top_offers.png';
  static const String icMeeting = 'assets/meeting.png';
  static const String icCard = 'assets/card.png';
  static const String icLife = 'assets/life.png';
  static const String icMeetings = 'assets/meetings.png';
  static const String icEvents_screen = 'assets/events_screen.png';
  static const String icCard_screen = 'assets/card_screen.png';
  static const String icEvent = 'assets/events.png';
  static const String icArcticons_lounge = 'assets/arcticons_lounge.png';


}
