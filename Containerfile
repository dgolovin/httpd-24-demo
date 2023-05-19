#
# Copyright (C) 2023 Red Hat, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# SPDX-License-Identifier: Apache-2.0

FROM --platform=linux/amd64 registry.access.redhat.com/ubi9/httpd-24

LABEL org.opencontainers.image.title="Simple application with static content" \
        org.opencontainers.image.description="This is example of using Apache httpd 2.4 image to deploy web server with static content" \
        org.opencontainers.image.vendor="Red Hat"

# Add application sources
# ADD index.html /var/www/html/index.html
ADD dist /var/www/html

# Run script uses standard ways to run the application and also generates
# self-signed certificates in order to allow SSL-protected connection
CMD run-httpd
