/**
 * Created by boy on 2017/7/31.
 */

var app = angular.module('myApp', []);
app.controller('personCtrl', function($scope) {
    $scope.name = "小刚";
    $scope.age = "18";
    $scope.introduce = function() {
        return $scope.name + " " + $scope.age;
    }
});