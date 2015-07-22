#!/usr/bin/env bash

# Download Sensu's SSL Certificate
pushd /tmp && wget http://sensuapp.org/docs/0.13/tools/ssl_certs.tar && tar -xvf ssl_certs.tar

# Generate SSL Certs
pushd ssl_certs && ./ssl_certs.sh generate

popd
popd

sudo mkdir -p /etc/rabbitmq/ssl

sudo cp /tmp/ssl_certs/sensu_ca/cacert.pem /tmp/ssl_certs/server/cert.pem /tmp/ssl_certs/server/key.pem /etc/rabbitmq/ssl
