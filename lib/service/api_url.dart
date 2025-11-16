class ApiUrl {

  static const String baseUrl = "https://ecommerce-api.codesilicon.com/api";
  //========================= Authentication =========================


  ///==================================== Home  ==================================

   static const String categoryList = '/CategoryList';
   static const String productSlider = '/ListProductSlider';





/*
  static const String signUp = '/user/sign-up';
  static const varifyCode = '/user/verify-code';
  static const login = '/auth/login';
  static const address = '/user/update-profile';
  static const post = '/task/create-task';
  static const getMyProfile = '/user/get-my-profile';
  static const getAllCategory = '/category/all-categories';*/



  ///==================================== Home  ==================================



  static const getBanner = '/banner/get-all-banner';
  static getClass({required String date}) => '/class/get-classes?date=$date';
  static getClassWithName({required String date, required String name}) =>
      '/class/get-classes?searchTerm=$name&date=$date';

  //=================================== Shope ================================




  static getProducts({required String page}) =>
      '/product/all-products?page=$page&limit=5';

  static String getProductsWithSearch({required String searchTerm}) =>
      '/product/all-products?searchTerm=$searchTerm';

  static getCourses({required String page}) =>
      '/course/get-all-course?page=$page&limit=10';

  static String getCoursesWithSearch({required String searchTerm}) =>
      '/course/get-all-course?searchTerm=$searchTerm';

  //==================================== Cart ===================================




  static const String getCart = '/cart/view-cart';
  static const String addCart = '/cart/add-to-cart';
  static const String incressQuantity = '/cart/increase-item-quantity';
  static const String decressQuantity = '/cart/decrease-item-quantity';
  static const String removeItem = '/cart/remove-cart-item';

  //=================================== Class ==============================




  static const String upcomingClasses = '/class-book/my-bookings?status=BOOKED';
  static const String previousClasses =
      '/class-book/my-bookings?status=COMPLETED';

  static const String bookClass = '/class-book/book';

  static String cancelClass({required String classID}) =>
      '/class-book/cancel-booking/$classID';

  //================================ Profile ==============================




  // static const String getMyProfile = '/user/get-my-profile';
  static const String updateMyProfile = '/normal-user/update-profile';

  //==================================== Order ================================




  static const String createOderFormCart = '/order/create-order';
  static const String createOderFormSingle = '/order/buy-product';
  static String createOderFormCourse({required String courseID}) =>
      '/purchase-course/purchase/$courseID';

  //======== >> Oder Histroy << ========

  static String getOrderHistory({required String status}) =>
      '/order/my-orders?status=$status';

  static const String getCompletedOrder = '/order/my-orders?status=COMPLETED';

  // ==================================== Membership ================================



  static const String getMembershipByNormalClass =
      '/package/get-all-packages?packageType=NORMAL_CLASS';

  static const String getMembershipByPopupClass =
      '/package/get-all-packages?packageType=POPUP_CLASS';

  static String purchaseMembership({required String packageID}) =>
      '/purchase-package/purchase/$packageID';

  //==================================== Notification ================================



  static const String getNotification = '/notification/get-notifications';

  //================================ Privacy and trms and condition =========================



  static const String getPrivacyPolicy = '/manage/get-privacy-policy';
  static const String getTermsAndCondition = '/manage/get-terms-conditions';
}
