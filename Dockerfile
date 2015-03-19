FROM grigio/meteor:1.0.3.1
# based on debian jessie

MAINTAINER miurahr

RUN apt-get install -qq -y git && \
    git clone http://git.libreboard.com/libreboard/libreboard.git /app && \
    /meteor-build.sh

# Run the generated files
CMD /meteor-run.sh
