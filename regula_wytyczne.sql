CASE 
  WHEN "fclass" IN ('primary','trunk','motorway','secondary') THEN '60'
  ELSE '40'
END
