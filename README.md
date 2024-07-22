CONDOR (Chilean ObservatioNs of DrOught chRonologies)
=====================================================

Overview
This repository contains tree ring data and associated hydroclimatic observations that can be used to study drought impacts in Chile. The data includes:

Tree ring chronologies: https://geo.yoda.uu.nl/CONDOR/chronologies

Digitalized tree core samples: https://geo.yoda.uu.nl/CONDOR/samples_jpg

Identified tree rings: https://geo.yoda.uu.nl/CONDOR/Sample_TRW

Basin-level time series data: https://geo.yoda.uu.nl/CONDOR/timeseries

Getting Started
1. Download the example data from https://github.com/jevegabriones/CONDOR
2. Load the digitalized tree-ring example in RStudio using the ".jpg" and ".Rdata" files, which contain the tree-ring points detected.
3. Load the identified tree rings in RStudio using the provided Rdata file.

Dataset Description
The dataset includes the following observations, ERA5 basin averages, and PCR-GLOBWB2.0 model basin averages:

- Temperature (ERA5-Land Monthly Aggregated - ECMWF Climate Reanalysis, Muñoz Sabater, J., 2019)
- Precipitation (ERA5-Land Monthly Aggregated - ECMWF Climate Reanalysis, Muñoz Sabater, J., 2019)
- Groundwater observations (Venegas et al., 2024)
- Surface water observations (CAMELS-CL, Alvarez-Garreton et al., 2018)
- Potential evapotranspiration (Penman-Monteith, ERA5 global reanalysis Monthly Aggregated - ECMWF Climate Reanalysis, Hersbach et al., 2020)
- Soil moisture (CCI-SM, Preimesberger et al., 2021)
- Groundwater recharge (PCR-GLOBWB2.0, Sutanudjaja et al., 2018)
- Baseflow (PCR-GLOBWB2.0, Sutanudjaja et al., 2018)
- EVI (MODIS/Terra and Aqua Surface Reflectance Daily L2G Global 1 km and 500 m, Didan, K., 2015)
