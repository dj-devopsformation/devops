# Use official Jenkins LTS image
FROM jenkins/jenkins:lts

# Switch to root to install additional tools
USER root

# Install any additional packages (e.g., Docker CLI)
RUN apt-get update && \
    apt-get install -y docker.io sudo && \
    apt-get clean

# Add Jenkins user to docker group (optional)
RUN usermod -aG docker jenkins

# Switch back to Jenkins user
USER jenkins
