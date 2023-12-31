Welcome to my solution to the Improvado Marketing common data modelling challenge (MCDM)!

Model can be found [here](https://github.com/gusakov-dmitry/improvado-dbt-mcdm-challenge/blob/main/models/ads_basic_performance.sql), channel views which it is constructed from can be found [here](https://github.com/gusakov-dmitry/improvado-dbt-mcdm-challenge/tree/main/models/channel_reports).
The ads_basic_performance report is constructed using <b>dbt Cloud</b> with <b>Snowflake</b> as a data platform/DWH.

### Instructions to add new sources to the MCDM

- upload the raw data from the new source as a .csv file to /seeds folder of this repository

If you are not an admin for the dbt project, you will need to request an admin to perform the following steps: 
- load the new data as a seed file via 'dbt seeds' in dbt command line
- create a model for the new data as a file in /models/channel_reports:

    - structure for the model is provided in /seeds/mcdm_paid_ads_basic_performance_structure.csv; you may use structure of any of the files in /models/channel_reports
    - data source columns may differ from the MCDM columns, in which case mapping should be performed by the admin or the initiator, preferably based on the documentation for the data source
    - upon completing and building the model, append the model to the full report at /models/ads_basic_performance.sql and rerun the full report model
    - commit the changes to the main repository, upon the merge new data should be available in the data platform


Default visualization for the project can be found at the [<b>Google Looker Studio dashboard</b>](https://lookerstudio.google.com/reporting/28e1fe19-b55f-4e4e-a238-a56c5ca9ba54/page/sPgUD)


<details>
<summary>Original task description</summary>
# Marketing common data modelling challenge

    Welcome to Marketing common data modelling challenge!

## Task

    At Improvado, we use marketing common data models (MCDM) to map data from various ad platforms into a single one. MCDM can help marketers with questions like: "Where clicks better on facebook or tiktok?"

Imagine that MCDM-model behind dashboard, is lost somehow. You need to rebuilt it. You have:
— raw data from the ad systems (seeds folder), - the MCDM table structure for this report, - and [dashboard](https://lookerstudio.google.com/reporting/fa668749-b82f-41a8-a12e-f7d9c0733b57/page/tEnnC)

In this situation, we've got checklist that you can follow (or not): - Begin a new project in dbt Cloud, utilizing Google Big Query as the DWH. - Use the raw data from the ad platforms and the MCDM table structure for the ads_basic_performance report.

### How to Submit

please provide answer in the [typeform](https://improvado.typeform.com/to/efqlu4kP)

- A link to your dbt Cloud repository that contains the completed MCDM for the ads_basic_performance report.
- A link to the recreated dashboard.
- A brief set of instructions (in md file in your repo) for adding data from new ad platforms into your MCDM.

## Hints:

    - *Cost per engage* is just a spended sum divided by sum of engagements
    - *Conversion cost* is calculated by dividing sum of spended by total conversions count
    - *Impressions by channel* is a sum of impressions for each channel
    - *CPC* gets like sum of spended divided by clicks count

### Tools

To complete this task, you might need the following tools:

- dbt Cloud
- Google Big Query
- Google Looker Studio

### Tool Instructions

To help you get started, here are some resources on how to use the necessary tools:

- dbt Courses:
  - [dbt Fundamentals](https://courses.getdbt.com/courses/fundamentals). Relevant chapters include:
    - Setting up dbt Cloud (17 minutes)
    - Models and Sources (40 minutes)
    - [dbt Cloud and BigQuery for Admins](https://courses.getdbt.com/courses/dbt-cloud-and-bigquery-for-admins) (35 minutes)
- [How to Use Google BigQuery for FREE](https://levelup.gitconnected.com/how-to-use-google-bigquery-for-free-9c2a65e3a78c#)
- How to create dashboard Google Looker Studio with Google Big Query
  ![](https://github.com/technomonah/dbt_mcdm_challenge/blob/main/how_to_export_gbq_to_looker.gif)

### Additional Resources:

- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- [Short overview](https://improvado.io/products/mcdm) for Improvado MCDM

### How to Use the Repository

This is the foundational repository for your project. Clone it and start your dbt Cloud from it.

The repository includes raw data from various ad platforms, as well as the MCDM structure for the ads_basic_performance report, which are provided as seeds:

- src_ads_bing_all_data
- src_ads_creative_facebook_all_data
- src_ads_tiktok_ads_all_data
- src_promoted_tweets_twitter_all_data
- mcdm_paid_ads_basic_performance_structure

To build the seeds, run `dbt seed` in the dbt Cloud console. Once the seeds have been built, you can access the data using `ref()`. For example, you can use `select * from {{ ref('src_ads_bing_all_data')}}` to access data from the `src_ads_bing_all_data` seed.

### Q&A

    Q: How to validate results for my model?
    A: Compare your dashboard with the dashboard from task. If some numbers doesn't match, then some fiels in your model got incorrect mapped

    Q: What if there're no MCDM sctructure field in raw datasource data?
    A: So you started understending the main goal of this task :-)	Suggest wich field or fields corresponds to MCDM ones by their meaning. If there're no such fields, then probably datasource just doesnt got them
</details>
