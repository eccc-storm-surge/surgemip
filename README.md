# Introduction

Validation of surge models in the SurgeMIP project.

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
    /fs/site6/eccc/mrd/rpnenv/pwa001/hindcast/SurgeMIP/gdsps_eccc.txt
    ```

*   ADCIRC (ANL)

    ```
    # copied to data/model/hourly/UND_ANL_GlobalADCIRC_barotropic_hourly.csv
    /fs/site6/eccc/mrd/rpnenv/pwa001/hindcast/SurgeMIP/UND_ANL_GlobalADCIRC_barotropic_hourly.csv
    ```

### Daily maxima

*   JRC

    ```
    data/model/daily_max/JRC_dailyMaxSurgeLevel
    ```


## Observations

*   GESLA3

    ```
    data/GESLA3
    ```