# ve_shinydashboard
Shiny Dashboard for the data visualization and analysis of the "VielfaltEntscheidet" Data. Will include code and output.

## Diversity Profile

In this Markdown, the variables for the diversity profile are generated and the raw data is described and visualized.
Input: the raw-data from limesurvey after it has been modified from the csv into and rds.
Output: a data-processed.rds file containing the raw-data as well as the newly generated variables.

Overview of generated variables:

- Gender (factor: `binary`)
- sexuelle Orientierung (factor: `lgbtiq`)
- Ost (factor: `ost`)
- Alter (numeric: `age`)
- Migrationshintergrund (factors: `mh_d`, `mh_gen`, `refu_gen`, `vertriebene`)
- rassistisch diskriminierte Menschen (factor: `rassdisk`)
- Beeinträchtigung ( factors: `beeint_d`, `schwerbeh_d`)
- SES (factors: `ses`, `care`, numeric: `ses_score`, `sss`)
