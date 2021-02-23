var app = angular.module('myApp', []);

          app.controller('myController', function($scope, $log, $location, $window){
              
              var getCurrentLocation = $location.absUrl();
              
              var getFileName = getCurrentLocation.substr(getCurrentLocation.lastIndexOf('/') + 1);
              
              var mainHeading="", Title = "";

              $log.log(getFileName);
              
               switch(getFileName)
                   {
                       case 'index.html' :
                        mainHeading = 'Now Hatch';
                        Title = 'Now Hatch Digital';
                           break;
                       case 'about.html' : 
                            mainHeading = 'About Us';
                            Title = 'Now Hatch Digital : About Us';
                           break;
                       case 'clients.html' : 
                             mainHeading = 'Our Clients'; 
                             Title = 'Now Hatch Digital : Clients';
                           break;
                       case 'contact.html' : 
                           mainHeading = 'Contact Us';
                           Title = 'Now Hatch Digital : Contact Us';
                           break;
                        case 'service.html' :
                            mainHeading = 'Services';
                            Title = 'Now Hatch Digital : Services';
                           break;
                        case 'packages.html' : 
                             mainHeading = 'Packages';
                             Title = 'Now Hatch Digital : Packeages';
                             break;
                        default : Title = 'Now Hatch Digital';
                   }

              $scope.mainHeading = mainHeading;
              $scope.Title = Title; 
          });

          