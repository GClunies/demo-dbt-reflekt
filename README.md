# demo-dbt-with-reflekt
A [dbt](https://www.getdbt.com/) project demonstrating how a [Reflekt](https://github.com/GClunies/reflekt) dbt package can be used to:
- Build staging models for event data without writing repetitive SQL and YAML files. Staging models are imported from the Reflekt dbt package, speeding up the modeling workflow.
- Automatic documentation coverage of Reflekt staging models, perfectly *reflekting* the schemas defined in a Reflekt project.
- Used staging models built by Reflekt in downstream models and logic. Focus on building models that drive business value.
