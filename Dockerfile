# Extend the official Rasa SDK image
FROM rasa/rasa-sdk:2.2.0
# FROM rasa/rasa-x:0.35.0a5

# Use subdirectory as working directory
WORKDIR /app

# Copy any additional custom requirements, if necessary (uncomment next line)
# COPY actions/requirements-actions.txt ./

# Change back to root user to install dependencies
USER root
# RUN apt-get install -y mc
# RUN mkdir /app/testsm

# Install extra requirements for actions code, if necessary (uncomment next line)
# RUN pip install -r requirements-actions.txt

# Copy actions folder to working directory
COPY ./actions /app/actions

# RUN pip install rasa-x -i https://pypi.rasa.com/simple
# RUN export RASA_X_PASSWORD="testsm"
# RUN rasa x

# By best practices, don't run the code with root user
USER 1001

EXPOSE 80
EXPOSE 443