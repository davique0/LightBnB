SELECT reservations.id, properties.title as title,
  properties.cost_per_night as cost_per_night,
  start_date,
  avg (property_reviews.rating) as average_rating
FROM reservations
JOIN properties ON properties.id = reservations.property_id
JOIN property_reviews ON property_reviews.property_id = properties.id
WHERE reservations.guest_id = 4
GROUP BY reservations.id, properties.id
ORDER BY start_date
LIMIT 10;