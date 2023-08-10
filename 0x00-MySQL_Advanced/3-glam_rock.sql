-- A SQL script that lists all bands with Glam rock as their main style
-- , ranked by their longevity
-- Column names must be: band_name and lifespan (in years)
-- uses attributes formed and split for computing the lifespan
-- script can be executed on any database
SELECT band_name, (IFNULL(split, '2022') - formed) AS lifespan
    FROM metal_bands
    WHERE style LIKE '%Glam rock%'
    ORDER BY lifespan DESC;