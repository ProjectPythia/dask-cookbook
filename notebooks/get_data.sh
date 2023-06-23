#!/bin/bash

set +x
# Print usage if -h or --help is given
if [[ "$1" == "-h" || "$1" == "--help" ]]; then
    echo "Usage: $0 [option]"
    echo "Options:"
    echo "    notebook2  Download Data for Notebook 2 (Dask DataFrame) -- GHCND Dataset"
    echo "    notebook3  Download Data for Notebook 3 (Dask Xarry)     -- CESM LENS2"
    echo "    all        Download both dataset (default)"
    exit
fi

# An array of IDs
ids=("14doSRn8hT14QYtjZz28GKv14JgdIsbFF" "15rCwQUxxpH6angDhpXzlvbe1nGetYHrf" "1Tbuom1KMCwHjy7-eexEQcOXSr51i6mae")

# Decide which IDs to download based on the input
case $1 in
    notebook2)
        ids=("${ids[@]:0:2}")
        ;;
    notebook3)
        ids=("${ids[2]}")
        ;;
    all|'')
        # No change
        ;;
    *)
        echo "Unknown option: $1"
        exit 1
        ;;
esac

# Loop through the array
for id in "${ids[@]}"
do
      FILEID=$id
      FILENAME=data.tar.gz
      # Print the full URL
      echo "Downloading https://docs.google.com/uc?export=download&id=$id"
      mkdir .tmp
      wget --quiet --load-cookies .tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=FILEID' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=$FILEID" -O $FILENAME
      rm -rf .tmp

      mkdir -p ../data

      # Unzip the tar file
      tar -xvzf data.tar.gz -C ../data

      # Clean up by removing the tar file
      rm data.tar.gz
done

