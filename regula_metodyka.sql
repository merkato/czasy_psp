CASE 
  WHEN "fclass" IN ('trunk','motorway') THEN '60'
  WHEN "fclass" IN ('primary', 'secondary') THEN '50'
  ELSE '40'
END
