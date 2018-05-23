; This program is example of easiest program to read ascii files like .txt .csv etc containing different data types

begin

data=asciiread("AO_EU.csv",-1,"string")   ; first field is filename with path  , -1 says read all records or you have to specify 
                                          ; number of record as array , string gives data type  
                                          ; Here we read all data in variable data as string records

;print(data)

delim=","

year=str_get_field(data, 1, delim)    ; str_get_field is used to get each field seperated by deliminator here it is , 1 gives field 
                                      ; before first occurence of deliminator etc
mon=str_get_field(data, 2, delim)
day=str_get_field(data, 3, delim)
AO=str_get_field(data, 4, delim)
EU=str_get_field(data, 5, delim)

print(EU)

end
