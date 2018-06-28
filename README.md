# Studienarbeit Serverseritiges Programmieren #  

## Angaben zum Studenten ##

Name: Moritz Großmann  
Studiengang: Informatik

## Vorbereitungen ##

Bitte kopieren sie den Ordner ```kundenauftrag``` in das Student-Homeverzeichnis der virtuellen Maschine. Führen sie danach folgende Kommandos aus.

```bash
student@sspVM:~$ cd ~/kundenauftrag
student@sspVM:~/kundenauftrag$ ./run.sh
student@sspVM:~/kundenauftrag$ cd ~/glassfish4/bin
student@sspVM:~/glassfish4/bin$ ./asadmin
asadmin> start-domain domain1
asadmin> deploy /home/student/kundenauftrag/kundenauftrag.war
asadmin> exit
student@sspVM:~/glassfish4/bin$ x-www-browser http://localhost:8080/kundenauftrag/index.xhtml
```

## Benutzer der Anwendung ##

| Benutzername | Passwort | Rechte |
|--------------|----------|--------|
| user | user | Darf alle seiten außer das erstellen von Kunden und Kundenaufträgen aufrufen |
| admin | admin | Darf alle seiten aufrufen |

