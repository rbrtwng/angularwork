'use strict';

angular.module('confusionApp')
        .constant('baseURL',"https://jsonserver-rbrtwng.c9users.io/")
        .service('menuFactory', ['$resource', 'baseURL', function($resource, baseURL) {
    
            
    
                this.getDishes = function(){
                    
                    return $resource(baseURL+"dishes/:id", null, {'update':{method:'PUT'}});
                    
                };
    
    
                // implement a function named getPromotion
                // that returns a selected promotion.
                // implementation of getPromotion
                
                this.getPromotions = function (){
                   // return promotions[index];
                   return $resource(baseURL+"promotions/:id", null, {'update':{method:'PUT'}});
                };
    
                        
        }])

        .factory('corporateFactory', ['$resource', 'baseURL', function($resource, baseURL) {
    
            var corpfac = {};
    
      
     
            // Implement two functions, one named getLeaders,
            // the other named getLeader(index)
            // Remember this is a factory not a service
            
            // implementation for getLeaders
            corpfac.getLeaders = function(){
                return $resource(baseURL+"leadership/:id", null, {'update':{method:'PUT'}});
            };
            
            // implementation for getLeader
            
            return corpfac;
    
    
        }])
        
          .service('feedbackFactory', ['$resource', 'baseURL', function($resource, baseURL) {
    
            
    
                this.getFeedbacks = function(){
                    
                    return $resource(baseURL+"feedback/:id", null, {'update':{method:'PUT'}});
                    
                };
    
                        
        }])

;
