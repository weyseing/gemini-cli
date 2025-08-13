FROM node:20

# Install Gemini CLI
RUN npm install -g @google/gemini-cli

# Install playwright-chrome
RUN npx playwright install chrome

# Terminal style
RUN echo 'export PS1="\\[\\e[1;32m\\]\\u@\\h\\[\\e[0m\\]:\\[\\e[1;34m\\]\\w\\[\\e[0m\\]\\$ "' >> /root/.bashrc

# Startup with gemini-cli
RUN echo 'gemini' >> /root/.bashrc

# Copy file & workdir
COPY . /workspace
WORKDIR /workspace

# Entry point
RUN chmod 755 /workspace/docker-entrypoint.sh
ENTRYPOINT ["/workspace/docker-entrypoint.sh"]