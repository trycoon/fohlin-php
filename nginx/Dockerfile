FROM nginx:alpine
COPY nginx/default.conf /etc/nginx/conf.d
COPY html /var/www/html2
RUN mkdir -p /var/www/html /var/www/logs
RUN echo $'<?php\n\
 phpinfo();\n\
 ?>' > /var/www/html/index.php
