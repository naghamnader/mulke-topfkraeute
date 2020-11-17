<?php
 function getProductLocation($key) {
          $value = "";
          switch($key){
              case 1:
                  $value = "sonnig";
              break; 
              case 2:
                  $value = "vollsonnig";
              break; 
              case 3:
                  $value = "halbschattig";
              break; 
              case 4:
                  $value = "schattig";
              break; 
          }
          return $value;
      }
      function getProductWaterConsumption($key) {
          $value = "";
          switch($key){
              case 1:
                  $value = "mittel";
              break; 
              case 2:
                  $value = "mäßig feucht";
              break; 
              case 3:
                  $value = "feucht";
              break; 
              case 4:
                  $value = "leicht feucht";
              break; 
              case 5:
                  $value = "mäßig";
              break; 
              case 6:
                  $value = "mäßig trocken";
              break; 
              case 7:
                  $value = "trocken";
              break; 
          }
          return $value;
      }