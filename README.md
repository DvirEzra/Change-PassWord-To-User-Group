                                                    # Change PassWord To-User/Group
                                                    
In order to run the **first** script that changes a password for a **single user**, you must use the username found in the active directory .  


In order to run the **second** script that changes the password for a **group of users**, you must use the names of the users that are in the active directory and put them in a txt file named pass and put it in the following path:
**$file = Get-Content -Path c:\temp\pass.txt**
