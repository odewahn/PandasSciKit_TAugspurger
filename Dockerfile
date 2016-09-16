FROM nicoinn/apache-toree:v0.0.1

# launchbot-specific labels
LABEL name.launchbot.io="Pandas and SciKit Learn"
LABEL workdir.launchbot.io="/srv/toree/dist/toree-pip"
LABEL description.launchbot.io="Learn Pandas and SciKit Learn with Torree"
LABEL 8888.port.launchbot.io="Start Tutorial"


# Set the working directory
WORKDIR /srv/toree/dist/toree-pip

# Expose the notebook port
EXPOSE 8888

USER root
ENV SPARK_OPTS="--master=local[4]"

# Start the notebook server
#CMD jupyter notebook --no-browser --port 8888 --ip=*