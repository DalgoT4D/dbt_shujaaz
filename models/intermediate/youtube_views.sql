{{ config(
  materialized='table'
) }}

SELECT 
    video_id,
    subscribed_status,
    TO_DATE(date::TEXT, 'YYYYMMDD') AS actual_date,  -- Converting the INT date to a formatted date
    views AS total_views,
    watch_time_minutes AS average_watch_time,
    comments AS total_comments,
    likes AS total_likes,
    shares AS total_shares,
    subscribers_gained - subscribers_lost AS net_subscribers,
    (card_impressions + annotation_impressions) AS total_impressions,
    average_view_duration_percentage,
        CASE 
    WHEN country_code = 'ZZ' THEN 'Unknown'
    WHEN country_code = 'KE' THEN 'Kenya'
    WHEN country_code = 'TZ' THEN 'Tanzania'
    WHEN country_code = 'DE' THEN 'Germany'
    WHEN country_code = 'MZ' THEN 'Mozambique'
    WHEN country_code = 'GB' THEN 'United Kingdom'
    WHEN country_code = 'TW' THEN 'Taiwan'
    WHEN country_code = 'ID' THEN 'Indonesia'
    WHEN country_code = 'US' THEN 'United States'
    WHEN country_code = 'AT' THEN 'Austria'
    WHEN country_code = 'CA' THEN 'Canada'
    WHEN country_code = 'UG' THEN 'Uganda'
    WHEN country_code = 'PE' THEN 'Peru'
    WHEN country_code = 'AE' THEN 'United Arab Emirates'
    WHEN country_code = 'SA' THEN 'Saudi Arabia'
    WHEN country_code = 'CD' THEN 'Democratic Republic of the Congo'
    WHEN country_code = 'ZA' THEN 'South Africa'
    WHEN country_code = 'QA' THEN 'Qatar'
    WHEN country_code = 'IN' THEN 'India'
    WHEN country_code = 'NG' THEN 'Nigeria'
    WHEN country_code = 'ET' THEN 'Ethiopia'
    WHEN country_code = 'BB' THEN 'Barbados'
    WHEN country_code = 'MA' THEN 'Morocco'
    WHEN country_code = 'FR' THEN 'France'
    WHEN country_code = 'SG' THEN 'Singapore'
    WHEN country_code = 'AU' THEN 'Australia'
    WHEN country_code = 'DZ' THEN 'Algeria'
    WHEN country_code = 'LY' THEN 'Libya'
    WHEN country_code = 'ZM' THEN 'Zambia'
    WHEN country_code = 'SO' THEN 'Somalia'
    WHEN country_code = 'IT' THEN 'Italy'
    WHEN country_code = 'BW' THEN 'Botswana'
    WHEN country_code = 'MW' THEN 'Malawi'
    WHEN country_code = 'JP' THEN 'Japan'
    WHEN country_code = 'ES' THEN 'Spain'
    WHEN country_code = 'BH' THEN 'Bahrain'
    WHEN country_code = 'BI' THEN 'Burundi'
    WHEN country_code = 'SN' THEN 'Senegal'
    WHEN country_code = 'EG' THEN 'Egypt'
    WHEN country_code = 'PL' THEN 'Poland'
    WHEN country_code = 'YE' THEN 'Yemen'
    WHEN country_code = 'PG' THEN 'Papua New Guinea'
    WHEN country_code = 'RW' THEN 'Rwanda'
    WHEN country_code = 'PH' THEN 'Philippines'
    WHEN country_code = 'SD' THEN 'Sudan'
    WHEN country_code = 'CM' THEN 'Cameroon'
    WHEN country_code = 'NP' THEN 'Nepal'
    WHEN country_code = 'BE' THEN 'Belgium'
    WHEN country_code = 'BR' THEN 'Brazil'
    WHEN country_code = 'LK' THEN 'Sri Lanka'
    WHEN country_code = 'BD' THEN 'Bangladesh'
    WHEN country_code = 'CN' THEN 'China'
    WHEN country_code = 'ZW' THEN 'Zimbabwe'
    WHEN country_code = 'OM' THEN 'Oman'
    WHEN country_code = 'NL' THEN 'Netherlands'
    WHEN country_code = 'BZ' THEN 'Belize'
    WHEN country_code = 'PT' THEN 'Portugal'
    WHEN country_code = 'TM' THEN 'Turkmenistan'
    WHEN country_code = 'MY' THEN 'Malaysia'
    WHEN country_code = 'GQ' THEN 'Equatorial Guinea'
    WHEN country_code = 'PK' THEN 'Pakistan'
    WHEN country_code = 'KW' THEN 'Kuwait'
    WHEN country_code = 'MU' THEN 'Mauritius'
    WHEN country_code = 'NO' THEN 'Norway'
    WHEN country_code = 'TR' THEN 'Turkey'
    WHEN country_code = 'TN' THEN 'Tunisia'
    WHEN country_code = 'FI' THEN 'Finland'
    WHEN country_code = 'JM' THEN 'Jamaica'
    WHEN country_code = 'IQ' THEN 'Iraq'
    WHEN country_code = 'TT' THEN 'Trinidad and Tobago'
    WHEN country_code = 'LB' THEN 'Lebanon'
    WHEN country_code = 'MR' THEN 'Mauritania'
    WHEN country_code = 'GH' THEN 'Ghana'
    WHEN country_code = 'CI' THEN 'Ivory Coast'
    WHEN country_code = 'CL' THEN 'Chile'
    WHEN country_code = 'KZ' THEN 'Kazakhstan'
    WHEN country_code = 'HK' THEN 'Hong Kong'
    WHEN country_code = 'GA' THEN 'Gabon'
    WHEN country_code = 'RU' THEN 'Russia'
    WHEN country_code = 'SS' THEN 'South Sudan'
    WHEN country_code = 'MX' THEN 'Mexico'
    WHEN country_code = 'NE' THEN 'Niger'
    WHEN country_code = 'UZ' THEN 'Uzbekistan'
    WHEN country_code = 'NZ' THEN 'New Zealand'
    WHEN country_code = 'IR' THEN 'Iran'
    WHEN country_code = 'SY' THEN 'Syria'
    WHEN country_code = 'GM' THEN 'Gambia'
    WHEN country_code = 'AZ' THEN 'Azerbaijan'
    WHEN country_code = 'HU' THEN 'Hungary'
    WHEN country_code = 'SR' THEN 'Suriname'
    WHEN country_code = 'GY' THEN 'Guyana'
    WHEN country_code = 'AG' THEN 'Antigua and Barbuda'
    WHEN country_code = 'ML' THEN 'Mali'
    WHEN country_code = 'DK' THEN 'Denmark'
    WHEN country_code = 'TH' THEN 'Thailand'
    WHEN country_code = 'SZ' THEN 'Eswatini'
    WHEN country_code = 'LU' THEN 'Luxembourg'
    WHEN country_code = 'EC' THEN 'Ecuador'
    WHEN country_code = 'BF' THEN 'Burkina Faso'
    WHEN country_code = 'IL' THEN 'Israel'
    WHEN country_code = 'SK' THEN 'Slovakia'
    WHEN country_code = 'RO' THEN 'Romania'
    WHEN country_code = 'TG' THEN 'Togo'
    WHEN country_code = 'UA' THEN 'Ukraine'
    WHEN country_code = 'GE' THEN 'Georgia'
    WHEN country_code = 'AO' THEN 'Angola'
    WHEN country_code = 'EH' THEN 'Western Sahara'
    WHEN country_code = 'DO' THEN 'Dominican Republic'
    ELSE 'Unknown'
END AS country_name
FROM 
    staging.channel_basic_a2
GROUP BY 
    video_id, 
    subscribed_status,
    date,  -- Grouping by the original INT date column
    views, 
    average_watch_time, 
    comments, 
    likes, 
    shares, 
    subscribers_gained, 
    subscribers_lost, 
    card_impressions, 
    annotation_impressions,
    country_name,
    average_view_duration_percentage


