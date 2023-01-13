
1. Klona ner Git-repository till lämplig lokal katalog.

2. Installera ["Docker-Desktop"](https://www.docker.com/) eller ["Rancher-Desktop"](https://rancherdesktop.io/)

3. Justera ovanstående programvara och tilldela Docker så mycket minne och CPU-kärnor som du total kommer att behöva. Stäng av Kubernetes ifall du inte behöver den. Välj "containerd(Moby)" som Docker-engine om det valet finns.

4. Kör `./dev.sh help` och följ instruktionerna för att starta ett projekt.

5. Surfa till http://localhost:8080 och verifiera att du får upp PHPs status sida.

6. Öppna Visual Studio Code (eller liknande) och öppna katalogen som loggades ut på första raden i konsollen.

7. Tryck "CTRL-C" i konsollen för att stänga ner Docker containrarna, all data kommer dock ligga kvar.



Ytterligare info:

- [Om Adminer är aktiverad i docker-compose] Surfa till http://localhost:8082, ange <din dators IP-adress:3306> i "Server"-fältet, "root" i "Användarnamn"-fältet och "admin" i "Lösenord"-fältet, logga sedan in för att administrera och verifiera att MySQL fungerar korrekt.

- För att ansluta via termial till MySQL databas:

        mysql -h <my IP-adress> -uroot -padmin





Alt.

1. Installera ["Docker-Desktop"](https://www.docker.com/)

2. Installera extension till Visual Studio Code, [Remote Development](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.vscode-remote-extensionpack). (för mer bakgrundsinformation se [Use Docker Compose](https://code.visualstudio.com/docs/remote/create-dev-container#_use-docker-compose))

3. Tryck F1 i VSCode, kör: "Remote-Containers: Reopen in Container"
