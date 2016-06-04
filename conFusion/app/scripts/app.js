	'use strict';

angular.module('confusionApp', ['ngRoute'])
    
    .config(function($routeProvider){
        $routeProvider
        .when ('/contactus',{
            templateUrl: 'contactus.html',
            controller: 'ContactController'
        })
        
          .when ('/menu',{
            templateUrl: 'menu.html',
            controller: 'MenuController'
        })
        
          .when ('/menu/:idt',{
            templateUrl: 'dishdetail.html',
            controller: 'DishDetailController'
        })
        
        .otherwise('/contactus');
    })
    

;