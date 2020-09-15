FROM elixir:1.10

# bump this up to rebuild the image
ENV BUILD_VERSION=0.0.1 \
    PATH="/node_modules/cypress/bin:${PATH}"

RUN (curl -sL https://deb.nodesource.com/setup_14.x | bash -) \
      && apt-get install -y nodejs \
      && apt-get install -y libgtk2.0-0 libgtk-3-0 libgbm-dev libnotify-dev libgconf-2-4 libnss3 libxss1 libasound2 libxtst6 xauth xvfb \
      && npm install cypress


