ARG TAG=latest
FROM uazo/chromium:${TAG} AS source

ENV CHR_SOURCE_DIR=/home/lg/working_dir/chromium/src/
ENV OUTPUT_DIR=/home/lg/working_dir/out/
ENV FILE_LIST=/home/lg/working_dir/file_list.txt

COPY get_files.sh .
COPY file_list.txt .
RUN bash get_files.sh

FROM scratch AS export-stage
COPY --from=source /home/lg/working_dir/out/ ./src/
