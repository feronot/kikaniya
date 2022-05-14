FROM harshpreets63/cutie:sweet

WORKDIR /usr/kikaniya/app
COPY . .

RUN set -ex \
    && chmod 777 /usr/kikaniya/app \ 
    && cp .netrc /root/.netrc \
    && chmod 600 /usr/kikaniya/app/.netrc \
    && cp extract pextract /usr/local/bin \
    && chmod +x aria.sh /usr/local/bin/extract /usr/local/bin/pextract
RUN pip3 install -U pyrogram
CMD ["bash", "start.sh"]
