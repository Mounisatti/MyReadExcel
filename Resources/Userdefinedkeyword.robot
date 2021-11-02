*** Setting ***
Library  SeleniumLibrary
Library  ../TestData/ReadData.py

*** Keywords ***
Read NoOf Rows
    [Arguments]  ${sheetname}
    ${maxr}=  Rows_of_Numbers   ${sheetname}
    [Return]    ${maxr}

Read NoOf Cell
    [Arguments]  ${Sheename}  ${row}  ${cell}
    ${UserExcel}=  Cell_data  ${Sheename}  ${row}  ${cell}
    [Return]  ${UserExcel}

