select * from {{ ref('ads_bing_mcdm') }}
union
select * from {{ ref('ads_facebook_mcdm') }}
union
select * from {{ ref('ads_tiktok_mcdm') }}
union
select * from {{ ref('ads_twitter_mcdm') }}