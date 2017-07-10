(function () {
    'use strict';

    /**
     * AppController - Main Controller of Application 
     */
    angular.module("doorsaverApp").controller('AppController', appController);

    appController.$inject = [];

    function appController() {
        var vm = this;

        vm.toggleMenu = function(){
            vm.showMenu = !vm.showMenu;
        }

    }

})();
(function () {
  'use strict';

  /**
   * App Module of Application
   */
  angular.module('doorsaverApp', [
    'ajaxModule',
    'doorsaverApp.core',
    'doorsaverApp.common',
    'doorsaverApp.login',
    'doorsaverApp.main'

  ]);
})();
(function () {
    'use strict';

    /**
     * Routing of Application
     * Describe All routes of app
     */
    angular.module("doorsaverApp").config(route);

    route.$inject = ['$stateProvider', '$urlRouterProvider'];

    function route($stateProvider, $urlRouterProvider) {
        $urlRouterProvider.otherwise('/signin');
    }

})();
(function () {
    'use strict';
    /**
     * Main Run of application
     */
    angular.module("doorsaverApp").run(run);

    run.$inject = ['$rootScope', '$state'];

    function run($rootScope, $state) {
        $rootScope.$state = $state;
        angular.isUndefinedOrNull = function (value) {
            return value === undefined || value === null;
        }

        angular.isEmpty = function (value) {
            return value === undefined || value === null || value.length === 0 || value === '';
        }
    }

})();
