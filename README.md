# ussic

the mission here is to make united states standard industry code data available to the public as a structured data set.

## data types

the data is available in multiple formats, as follows:

### json

the json directory contains the raw parsed data and can be used to port into most other working environments. 
please note the following
* some fields are comprised of nested arrays
* divisions data contains line breaks as '\n', please handle according to your use case


### activerecord

ruby on rails is my jam, so you will find all the necessary models, migration, and seed to get you up and running.
