FROM ruby:2.0
RUN apt-get update \
  && apt-get -y install nodejs \
  && rm -rf /var/lib/apt/lists/*
WORKDIR /opt/mowoli
COPY Gemfile Gemfile.lock ./
RUN bundle install
COPY . .
RUN mkdir -p var/dcm4che2 var/sqlite3
VOLUME /opt/mowoli/var/dcm4che2 /opt/mowoli/var/sqlite3
# Export directory for the Modality Worklist (MWL).
ENV MWL_DIR="/opt/mowoli/var/dcm4che2"
# Name of your hospital / office (max. 64 characters)
ENV SCHEDULED_PERFORMING_PHYSICIANS_NAME="Simpson^Bart"
# Identifier of the Assigning Authority (system, organization, agency, or
# department) that issued the Patient ID.
# This sets DICOM-Tag (0010,0021).
ENV ISSUER_OF_PATIENT_ID="MOWOLI"
EXPOSE 3000
