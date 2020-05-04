/* A DATASET */
/* 
   A representation of data on 
   disk or created in memory. Most ECL functions
   return a DATASET
*/
Layout := RECORD
    STRING pickup_dt;
    DECIMAL8_2 fare;
END;

//Reading in-memory data
memDs := DATASET([{'2015-01-01 01:08:56', 25.10},
                  {'2015-01-01 02:10:22', 40.15}], Layout);

OUTPUT(memDs);

//Reading CSV file data. 
//For this code to work, the file has to exist on the cluster

/*
fileDs := DATASET(
          '~tutorials::cheatsheet::in::sample_trip_1.csv', 
          Layout, CSV);

OUTPUT(fileDs);
*/


