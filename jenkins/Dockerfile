# Utiliser l'image officielle Jenkins LTS
FROM jenkins/jenkins:lts

# Optionnel : définir l'utilisateur root
USER root

# Installer des outils supplémentaires si besoin (par ex. docker, git)
RUN apt-get update && apt-get install -y docker.io

USER jenkins
# Si vous avez des plugins à installer, vous pouvez le faire ici
# COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
# RUN jenkins-plugin-cli --plugin-file /usr/share/jenkins/ref/plugins.txt

# Définir le volume persistant pour Jenkins home

