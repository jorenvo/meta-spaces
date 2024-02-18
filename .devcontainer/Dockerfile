FROM odoo:17

SHELL ["/bin/bash", "-xo", "pipefail", "-c"]

# Override with our entrypoint that will call the checked out odoo-bin
COPY ./entrypoint.sh /

# Override configuration so we can easily run odoo-bin from terminal
COPY ./odoo.conf /etc/odoo/

USER root
RUN apt-get update && apt-get -y install git emacs-nox
RUN pip install pydevd-odoo

# Set default user when running the container
USER odoo

# Remove nologin
ENV SHELL /bin/bash

# ENTRYPOINT ["/entrypoint.sh"]
# CMD ["odoo"]