#
# We base our image from the alpine light image
FROM mattgomes28/cpp-ubuntu-bionic:0.11

#
# Root dir of vcpkg installation
ENV VCPKG_ROOT="/vcpkg"
ENV PATH="${PATH}:${VCPKG_ROOT}"

#
# Identify the maintainer of an image
LABEL maintainer="matheusgarcia28@gmail.com"

# install build dependencies 
RUN apt-get update \
    && apt-get install -y --no-install-recommends --no-install-suggests \
    zip \
    unzip \
    && git clone https://github.com/Microsoft/vcpkg.git \
    && chmod -R 777 "/vcpkg" \
    && ./vcpkg/bootstrap-vcpkg.sh \
    && apt-get clean \
    && apt-get autoremove -y \
    && apt-get autoremove --purge -y \
    && rm -rf /var/lib/apt/lists/*

