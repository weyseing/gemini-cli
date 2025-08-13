FROM node:20

# Install Gemini CLI
RUN npm install -g @google/gemini-cli

# Copy file & workdir
COPY . /workspace
WORKDIR /workspace

# Entry point
RUN chmod 755 /workspace/docker-entrypoint.sh
ENTRYPOINT ["/workspace/docker-entrypoint.sh"]