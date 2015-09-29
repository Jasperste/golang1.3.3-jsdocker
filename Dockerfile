FROM golang:1.4

# Copy the local package files to the container's workspace.
RUN mkdir -p /var/app/current/go/src/customlinks

ADD . /var/app/current/go/src/customlinks

# Build the outyet command inside the container.
# (You may fetch or manage dependencies here,
# either manually or with a tool like "godep".)
RUN go install /var/app/customlinks
RUN go get

# Run the customlinks command by default when the container starts.
ENTRYPOINT /go/bin/customlinks

# Document that the service listens on port 8080.
EXPOSE 7727