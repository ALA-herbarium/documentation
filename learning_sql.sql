-- To see all the fields in `flat`

SELECT * FROM flat LIMIT 1 ;

-- Basic query

SELECT   guid, scientific_name
FROM     flat
WHERE    guid_prefix = 'UAM:Herb'
ORDER BY guid
LIMIT    50 ;

-- casted as integer

SELECT   guid, cat_num::integer, scientific_name
FROM     flat
WHERE    guid_prefix = 'UAM:Herb'
ORDER BY cat_num::integer
LIMIT    50 ;

-- Another

SELECT guid, scientific_name, family
FROM flat
WHERE (dec_lat  > 50   AND
       dec_lat  < 60   AND
       dec_long < -160 AND
       dec_long > -170)
  AND  began_date > '2010-01-01'
  AND  guid_prefix = 'UAM:Herb'
ORDER BY family, scientific_name
LIMIT 100

-- Compare

SELECT   scientific_name
FROM     flat
WHERE    guid_prefix = 'UAM:Herb'
ORDER BY scientific_name
LIMIT    100 ;

-- with

SELECT   DISTINCT scientific_name
FROM     flat
WHERE    guid_prefix = 'UAM:Herb'
ORDER BY scientific_name
LIMIT    100 ;

-- Another way to do this:

SELECT   scientific_name
FROM     flat
WHERE    guid_prefix = 'UAM:Herb'
GROUP BY scientific_name
ORDER BY scientific_name
LIMIT    100 ;

-- This allows counting COUNT(), SUM() etc

SELECT   scientific_name, count(*)
FROM     flat
WHERE    guid_prefix = 'UAM:Herb'
GROUP BY scientific_name
ORDER BY scientific_name
LIMIT    100 ;

-- More levels of grouping:

SELECT   scientific_name, higher_geog, count(*)
FROM     flat
WHERE    guid_prefix = 'UAM:Herb'
GROUP BY scientific_name, higher_geog
ORDER BY scientific_name, higher_geog
LIMIT    100 ;

-- Joining across tables

SELECT   flat.guid,
  flat.collection_object_id AS fcoi,
  coll_obj_other_id_num.collection_object_id AS icoi,
  coll_obj_other_id_num.other_id_type, coll_obj_other_id_num.display_value
FROM flat, coll_obj_other_id_num
WHERE flat.collection_object_id = coll_obj_other_id_num.collection_object_id
  AND flat.guid_prefix = 'UAM:Herb'
LIMIT 100

-- Then add in:  AND coll_obj_other_id_num.other_id_type = 'collector number'
-- see code table ctcoll_other_id_type

-- Now compare with:

SELECT   flat.guid,
  coll_obj_other_id_num.other_id_type, coll_obj_other_id_num.display_value
FROM flat
LEFT JOIN coll_obj_other_id_num
ON flat.collection_object_id = coll_obj_other_id_num.collection_object_id
  AND coll_obj_other_id_num.other_id_type = 'collector number'
WHERE flat.guid_prefix = 'UAM:Herb'
LIMIT 1000
