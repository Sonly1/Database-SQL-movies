1. If own a Mac, because Azure SQL server 2019 doesn't run quite well on MAC go to Docker.
2. Based on your back, select the right version for you: https://docs.docker.com/desktop/install/mac-install/
3. After installation, launch Docker Desktop. You will need to grant Docker the necessary permissions to run on your macOS.
5. Docker will start running in the background, and you should see the Docker whale icon in your menu bar.

6. Open Terminal.
7. Run the following command to pull the Azure SQL Edge image, which is compatible with ARM architecture:
> docker pull mcr.microsoft.com/azure-sql-edge
8. Run the following command to start a new container with Azure SQL Edge:
> docker run -e 'ACCEPT_EULA=Y' -e 'MSSQL_SA_PASSWORD=CREATE_A_PASSWORD_HERE' -p 1433:1433 --name sqledge -d mcr.microsoft.com/azure-sql-edge
9. Run the following command to check the status of the container:
> docker ps
10. You should see a running container with the name sqledge.

11. Launch Visual Studio Code on your macOS.
12. Go to the Extensions view by clicking on the Extensions icon in the Activity Bar.
13. Search for "SQL Server" and install the SQL Server (mssql) extension by Microsoft. DO NOT SELECT SQL LITE! 
15. Click on File > New File or press Cmd+N to create a new file.
16. Save the file with a .sql extension.

17. In the new SQL file, use the code from create_database.sql. 
18. Open the Command Palette by pressing Cmd+Shift+P.
19. Type MS SQL: Connect and select it.
20. Follow the prompts to create a connection profile:
>Server name: localhost
> Database name: Leave this blank! 
> Authentication type: Choose SQL Login.
> Username: xxxx
> Password: xxxxx
> Save Password: Choose Yes to save the password in your profile.

21. Once the connection is establish, you should be good to go! 

