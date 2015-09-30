FROM golang:1.4

# Copy the local package files to the container's workspace.
ADD . /go/src/customlinks

# Build and get
RUN go get customlinks
RUN go get customlinks/lib/structs/links
RUN go get customlinks/lib/structs/stats
RUN go install customlinks

# Run the golang-docker command by default when the container starts.
ENTRYPOINT /go/bin/customlinks

# http server listens on port 7727.
EXPOSE 7727