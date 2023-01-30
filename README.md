# demo-dbt-with-reflekt
A demo [dbt](https://www.getdbt.com/) project showing how to:
- Import a [Reflekt dbt package](https://github.com/GClunies/demo-reflekt/tree/main/artifacts/dbt/demo-reflekt) into a dbt project. Reflekt dbt packages include:
  - Sources pointing to the tables where raw event data is stored
  - Staging models for all the events defined in the upstream [Reflekt project](https://github.com/GClunies/demo-reflekt).
  - Documentation for each staging model. Engineers, Analysts, and the business know what every model and columns means.
- Use the models built by Reflekt in a dbt project. Spend less time writing repetitive SQL and YAML files to stage data. Focus on building models that drive business value.

## NOTE
The [dbt_packages]() directory in this repo is included for demonstration purposes to show what models are imported by the package. In a real dbt project, the dbt_packages directory would be ignored by Git in the `.gitignore` file.
