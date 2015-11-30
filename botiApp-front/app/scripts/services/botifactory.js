'use strict';

/**
 * @ngdoc service
 * @name botiAppApp.botiFactory
 * @description
 * # botiFactory
 * Factory in the botiAppApp.
 */
angular.module('botiAppApp')
  .factory('botiFactory', function ($resource) {
    // Service logic
    // ...
    return $resource('http://localhost:3000/api/v1/stores.json');
    var meaningOfLife = 42;

    // Public API here
    return {
      someMethod: function () {
        return meaningOfLife;
      }
    };
  });
