*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Userdefinedkeyword.robot

*** Variable ***
${Browser}  chrome
${Url}  https://thetestingworld.com

*** Test Cases ***
ReadExcel
    open browser    ${Url}  ${Browser}
    maximize browser window
    click element   xpath://*[@id="ja-search"]/ul/li[1]/a
    ${row}=  Read NoOf Rows  Sheet1
    #FOR  ${i} IN  RANGE (0, ${row})
    FOR  ${i}  IN RANGE    1    ${row}+1     # custom block indent
         ${Username}=  Read NoOf Cell  Sheet1  ${i}  1
         ${Password}=  Read NoOf Cell  Sheet1  ${i}  2
         input text  name:username   ${Username}
         input text  id:password  ${Password}
         click button    xpath://*[@id="ja-content-main"]/div/div/form/fieldset/button
         set selenium speed  1seconds
    END


    #log to console  ${row}
    #${cell}=  Read NoOf Cell  Sheet1  1  1
    #log to console  ${cell}






