CASE 
  WHEN "fclass" IN ('primary','trunk','motorway') AND "maxspeed" >= '60' THEN '60'
	WHEN "fclass" IN ('primary','trunk','motorway') AND "maxspeed" = '0' THEN '60'
	WHEN "fclass" IN ('primary','trunk','motorway') AND "maxspeed" < '60' THEN "maxspeed"
  WHEN "fclass" ='secondary' AND "maxspeed" >= '50' THEN '50'
    WHEN "fclass" ='secondary' AND "maxspeed" = '0' THEN '50'
    WHEN "fclass" ='secondary' AND "maxspeed" < '50' THEN "maxspeed"
  WHEN "fclass" IN ('tertiary','unclassified') AND "maxspeed" >= '40' THEN '40'
    WHEN "fclass" IN ('tertiary','unclassified')  AND "maxspeed" = '0' THEN '40'  
	WHEN "fclass" IN ('tertiary','unclassified')  AND "maxspeed" < '40' THEN "maxspeed"
  WHEN "fclass" IN ( 'track' , 'track_grade1' , 'track_grade2' , 'track_grade3' )  THEN '20'  
  WHEN "fclass" IN ( 'track_grade5' , 'track_grade4', 'path', 'footway')  THEN '20'
  WHEN "fclass" = 'steps' THEN '3'
  ELSE '30'
END
