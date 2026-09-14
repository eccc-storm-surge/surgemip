# Introduction

Validation of surge models in the SurgeMIP project.

# Cloning the repository

```bash
git clone git@github.com:eccc-storm-surge/surgemip.git --recurse-submodules
```

# Details 

* Period of interest 2013 - 2018
* Score yearly, a year is defined from January to December
* Analysis results available here: https://hpfx.science.gc.ca/~olh001/verification/surgemip/
* Raw observation, model and pre-processed values can be found at: https://hpfx.science.gc.ca/~olh001/verification/surgemip/data/


# Input data

## Models 
*   GDSPS (ECCC) 

    ```
    # copied to data/model/hourly/gdsps_eccc.txt
    data/model/clean/hourly/gdsps_eccc.txt
    ```

*   ADCIRC (ANL)

    ```
    # copied to data/model/hourly/UND_ANL_GlobalADCIRC_barotropic_hourly.csv
    data/model/clean/hourly/UND_ANL_GlobalADCIRC_barotropic_hourly.csv
    ```
*   Google
    
    ```
    data/model/clean/hourly/google_predictions_50KM.csv
    ```

*   GTSM

    ```
    data/model/clean/hourly/gtsm.csv
    ```

### Daily maxima

*   JRC

    ```
    data/model/daily_max/JRC_dailyMaxSurgeLevel
    ```

    Note: to do plots for daily maxima we re-use outputs from loadprogs at hourly frequencies.

## Observations

*   GESLA3

    ```
    data/GESLA3
    ```