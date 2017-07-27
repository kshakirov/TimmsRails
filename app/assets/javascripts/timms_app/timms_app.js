var timmsApp = angular.module('TimmsApp', ['ngTable']);
timmsApp.controller("ProductEditController", function ($rootScope, $scope, $http, $location,  NgTableParams) {

    function _get_product_data(product_sku) {
        return $http.get('/products/' + product_sku).then(function (promise) {
            return promise.data;
        })
    };

    function _get_boms(product_sku) {
        return $http.get('http://graphservice.localhost/bom/byParentPart/' + product_sku).then(function (promise) {
            return promise.data;
        })
    }

    function _get_where_useds(product_sku) {
        return $http.get('http://graphservice.localhost/part/' + product_sku + '/ancestors').then(function (promise) {
            return promise.data;
        })
    }

    function _get_interchanges(product_sku) {
        return $http.get('http://graphservice.localhost/interchange/' + product_sku).then(function (promise) {
            return promise.data;
        })
    }


    $scope.init = function () {
        var product_sku = $location.absUrl().split('products/')[1].split('/edit')[0];
        console.log("product sku " + product_sku);
        _get_boms(product_sku).then(function (boms) {
            console.log(boms);
            $scope.boms = boms;
            $scope.bomTableParams = new NgTableParams({}, {dataset: boms});
        });
        _get_where_useds(product_sku).then(function (where_useds) {
            console.log(where_useds);
            $scope.where_useds = where_useds;
            $scope.wuTableParams = new NgTableParams({}, {dataset: where_useds});
        })

        _get_interchanges(product_sku).then(function (interchanges) {
            console.log(interchanges);
            $scope.interchanges = interchanges.parts;
            $scope.interchangeTableParams = new NgTableParams({}, {dataset: $scope.interchanges});
        })

        return _get_product_data(product_sku).then(function (product_data) {
                $scope.product = product_data.product;
                $scope.attributes = product_data.attributes;
                $scope.partType = product_data.partType;
        })

    }
})