FROM hhvm/hhvm:nightly

RUN cd $(mktemp -d) \
    && curl https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer