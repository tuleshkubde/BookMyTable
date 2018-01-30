
BookMyTableApp.controller('BookMyTableCtrl', function ($scope, $http,$location) {

    $scope.records = []; 
    $scope.HotelDetails = [];
    $scope.MenuList = [{}];
    $scope.HotelTablesDetails = [];
    $scope.EmailID = "";
   

    $http({
        url: "http://localhost:52530/api/Hotel/GetRestaurantDetailsList",
        dataType: 'json',
        method: 'Get',
        headers: {
            "Content-Type": "application/json"
        }
    }).then(function (response) {
        $scope.records = response.data;
        $scope.records.HotelName = $scope.HotelName;
    });

    var OrderDetailsEntities = new Object();
    $scope.HotelDetails = [];
   


    $http({
        url: "http://localhost:52530/api/Hotel/GetRestaurantTablesDetailsList?hotelId=1",
        dataType: 'json',
        method: 'Get',
        headers: {
            "Content-Type": "application/json"
        }
    }).then(function (response) {

        $scope.HotelTablesDetails  = response.data;

    });

    $http({
        url: "http://localhost:52530/api/Hotel/GetRestaurantMenuCardDetailsList?hotelId=1",
        dataType: 'json',
        method: 'Get',
        headers: {
            "Content-Type": "application/json"
        }
    }).then(function (response) {

        $scope.HotelDetails = response.data;

    });
    var totalPrice = 0;
    var Quantity = 0;
    var DisName = "";
    $scope.TotalPrice = 0;
    $scope.Quantity = 0;


    $scope.BookOrderwithDish = function (obj) {

        $scope.ISBooked = true;
        Quantity = Quantity + 1
        totalPrice = totalPrice + obj.Price;
        $scope.MenuList.push(obj);
        $scope.TotalPrice = totalPrice;
        $scope.Quantity = Quantity;
        $scope.SubmitionForm = true;


    };

    $scope.BookOrderTable = function (obj) {
        $scope.DineID = obj;
        $location.path('/menuList')
        //window.location.href = "/Home/DishListingPage";
    };



    $scope.BookMytableAndDish = function () {


     
            OrderDetailsEntities.HotelId = 1;//$scope.HotelId;
            OrderDetailsEntities.TableID = $scope.DineID;
            OrderDetailsEntities.ToatalAmount = $scope.TotalPrice;// $scope.ToatalAmount;       
            OrderDetailsEntities.EmailID = $scope.EmailID;
            OrderDetailsEntities.MenuList = $scope.MenuList;

            if ($scope.SubmitionForm == true) {

                $http({
                    url: "http://localhost:52530/api/Hotel/AddTablesAndOrderBooking",
                    dataType: 'json',
                    method: 'POST',
                    data: OrderDetailsEntities,
                    headers: {
                        "Content-Type": "application/json"
                    }
                }).then(function (response) {

                    $scope.OrderResponse = response.data;
                    $scope.SucessOrderID = $scope.OrderResponse[0].OrderID;
                    alert("Your order has been Place Succesfully  :" + $scope.OrderResponse[0].OrderID);


                    $location.path('/Success')

                });
            } else {

                alert("Please select your order and Email ID");
            }
         

       






    };

});