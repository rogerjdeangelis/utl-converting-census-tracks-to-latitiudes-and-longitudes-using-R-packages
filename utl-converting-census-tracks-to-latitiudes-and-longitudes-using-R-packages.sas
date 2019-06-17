Converting census tracks to latitiudes and longitudes centroids using R packages                                                 
                                                                                                                                 
github                                                                                                                           
https://tinyurl.com/yyjxbnpq                                                                                                     
https://github.com/rogerjdeangelis/utl-converting-census-tracks-to-latitiudes-and-longitudes-using-R-packages                    
                                                                                                                                 
SAS Forum                                                                                                                        
https://tinyurl.com/yy6ykpnt                                                                                                     
https://communities.sas.com/t5/SAS-Procedures/Assigning-census-tract-to-lat-long-coordinates/m-p/565877                          
                                                                                                                                 
                                                                                                                                 
*_                   _                                                                                                           
(_)_ __  _ __  _   _| |_                                                                                                         
| | '_ \| '_ \| | | | __|                                                                                                        
| | | | | |_) | |_| | |_                                                                                                         
|_|_| |_| .__/ \__,_|\__|                                                                                                        
        |_|                                                                                                                      
;                                                                                                                                
                                                                                                                                 
Location of shapfiles                                                                                                            
https://www.dropbox.com/s/vstmjhjmds8urwu/Boundaries%20-%20Census%20Blocks%20-%202000.zip?dl=0                                   
or                                                                                                                               
Use shapfile option                                                                                                              
https://data.cityofchicago.org/Facilities-Geographic-Boundaries/Boundaries-Census-Blocks-2000/uktd-fzhd                          
                                                                                                                                 
Bounding census tracks you are interested in                                                                                     
                                                                                                                                 
Max 17031000000                                                                                                                  
Min 17031840000                                                                                                                  
                                                                                                                                 
Breakdown                                                                                                                        
                                                                                                                                 
State   County    Track                                                                                                          
Fip      Code                                                                                                                    
17       031     840000                                                                                                          
                                                                                                                                 
*                                                                                                                                
 _ __  _ __ ___   ___ ___  ___ ___                                                                                               
| '_ \| '__/ _ \ / __/ _ \/ __/ __|                                                                                              
| |_) | | | (_) | (_|  __/\__ \__ \                                                                                              
| .__/|_|  \___/ \___\___||___/___/                                                                                              
|_|                                                                                                                              
;                                                                                                                                
                                                                                                                                 
* After unzipping you should have                                                                                                
                                                                                                                                 
    d:/shp/geo_export_65c87495-cf29-43f0-97c6-bc6a3281c11a.shp                                                                   
    WGS88 is  World Geodetic System ;                                                                                            
                                                                                                                                 
                                                                                                                                 
%utl_submit_r64('                                                                                                                
library(sp);                                                                                                                     
library(rgdal);                                                                                                                  
library(GISTools);                                                                                                               
library(dplyr);                                                                                                                  
setwd("d:/shp");                                                                                                                 
list.files("d:/shp", pattern="\\.shp$");                                                                                         
tract <- readOGR(".","geo_export_65c87495-cf29-43f0-97c6-bc6a3281c11a") %>% spTransform(CRS("+proj=longlat +datum=WGS84"));      
sink(file="d:/txt/chicago.txt");                                                                                                 
tract;                                                                                                                           
sink();                                                                                                                          
');                                                                                                                              
                                                                                                                                 
*            _               _                                                                                                   
  ___  _   _| |_ _ __  _   _| |_                                                                                                 
 / _ \| | | | __| '_ \| | | | __|                                                                                                
| (_) | |_| | |_| |_) | |_| | |_                                                                                                 
 \___/ \__,_|\__| .__/ \__,_|\__|                                                                                                
                |_|                                                                                                              
;                                                                                                                                
                                                                                                                                 
Slightly edited (no cjahe in data) to fit                                                                                        
                                                                                                                                 
class       : SpatialPolygonsDataFrame                                                                                           
features    : 24690                                                                                                              
lat long    : -87.94011, -87.52371, 41.64454, 42.02346  (xmin, xmax, ymin, ymax)                                                 
crs         : +proj=longlat +datum=WGS84 +ellps=WGS84 +towgs84=0,0,0                                                             
variables   : 16                                                                                                                 
                                                                                                                                 
names       :       block_ce_1,   block_ce_2, block_ce_3, block_cens,       block_cent,  block_zip,      census_b_1,             
                                                                                                                                 
min values  : 1814124.78396042, -87.93955868, 41.6448066,       2000, 1091311.36865143,          0, 170310000000979,             
max values  : 1951581.07692342,  -87.5248748, 42.0227832,       2000, 1205115.62244998,      60827, 170318400002084,             
                                                                                                                                 
Key Values (latitude and logitude extremes)                                                                                      
                                                                                                                                 
   -87.94011, -87.52371, 41.64454, 42.02346  (xmin, xmax, ymin, ymax)                                                            
                                                                                                                                 
census_b_1                                                                                                                       
                                                                                                                                 
State   County    Track   Block                                                                                                  
Fip      Code                                                                                                                    
17       031     840000   2084                                                                                                   
                                                                                                                                 
