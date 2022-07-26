FROM golang:1.12.0-alpine3.9
RUN mkdir /build
ADD . /build
WORKDIR /build
# RUN cd server && go build -o main .
RUN go build -o main .
CMD ["/build/main"]
# Download necessary Go modules
# COPY go.mod ./
# COPY go.sum ./
# RUN go mod github.com/Tonipenyallop/todolist_psql-go


# COPY *go ./

# RUN go build -o /todolist_psql-go

# CMD ["/todolist_psql-go"]
