FROM python:latest
RUN mkdir /build
WORKDIR /build
COPY requirements.txt /build
COPY . .
RUN export UBER_CLIENT_ID="{tOvdNnEN4S8eNQuJ6amrA715IHaM7Ium}"&&export UBER_CLIENT_SECRET="{jFaGWLsy_DNrrnXQqfZCRBaSrrXDZ3XDSPJytfC0}"
RUN pip install -r requirements.txt
EXPOSE 7000
CMD [ "python", "app.py" ]
