
var BookMyTableApp = angular.module('bookMyTable', ["ngRoute"]);

BookMyTableApp.config(function ($routeProvider) {

       // $urlRouterProvider.otherwise("/Home");
        $routeProvider
            .when("/", {
                templateUrl: "../../Scripts/BookMyTableNgJs/Views/index.html"
            }).when("/menuList", {
                templateUrl: "../../Scripts/BookMyTableNgJs/Views/DishPage.html"
            }).
            when('/Success', {
                templateUrl: "../../Scripts/BookMyTableNgJs/Views/Success.html"                
                //controller: 'routeDemoSecondController'
            }).otherwise("/login");
});
       
      