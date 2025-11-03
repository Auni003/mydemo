# Start from official Jenkins LTS with JDK 17
FROM jenkins/jenkins:lts-jdk17

# Switch to root to install Docker
USER root

# Install Docker CLI + daemon
RUN apt-get update && apt-get install -y docker.io

# Allow Jenkins user to use Docker
RUN usermod -aG docker jenkins

# Switch back to Jenkins user
USER jenkins
