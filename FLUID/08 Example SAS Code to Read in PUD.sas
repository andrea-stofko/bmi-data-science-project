/*************** Example code to create SAS library and formats catalog for FLUID public use datasets ***************/

/** Step 1: Assign libname FLUID to location where SAS datasets and formats are stored **/
/** NOTE: Replace string in double quotations with your directory where the FLUID SAS datasets are stored **/
libname FLUID "\\DCCFS1\Fileshare\PECARN\FLUID\PUD\Files to share\07 SAS datasets\FLUID"; *[Path to the location of the SAS datasets, for example C:\Temp]";  
libname NDKA "\\DCCFS1\Fileshare\PECARN\FLUID\PUD\Files to share\07 SAS datasets\NDKA"; *[Path to the location of the SAS datasets, for example C:\Temp]";  

/** Step 2: Create formats catalog **/
PROC FORMAT library=work cntlin=FLUID.formats; run;
PROC FORMAT library=work cntlin=NDKA.formats; run;

/** Step 3: Set options to access format library **/
options fmtsearch=(work); 

/** Step 4: View dataset contents (examples) **/
proc contents data=FLUID.aelog; run;
proc contents data=FLUID.demog; run;
proc contents data=FLUID.diabeteshist; run;
proc contents data=FLUID.followup; run;

