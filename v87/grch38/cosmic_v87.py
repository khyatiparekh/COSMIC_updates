
import requests
import sys

email    = "sreynolds@systemsbiology.org"
password = "20cosmic15"
url      = "https://cancer.sanger.ac.uk/cosmic/file_download/"

#email    = "sreynolds@systemsbiology.org"
#password = "20cosmic!BETA18"
#url      = "https://cancer-beta.sanger.ac.uk/cosmic/file_download/"

# get a list of all files in COSMIC v85
filelist = requests.get("https://cancer.sanger.ac.uk/cosmic/file_download/GRCh38/cosmic/v87")
#filelist = requests.get("https://cancer-beta.sanger.ac.uk/cosmic/file_download/GRCh37/cosmic/v87")

# extract the download URLs from the JSON response
for filepath in filelist.json():

    # extract the filename from the download file path
    filename = filepath.rsplit("/", 1)[1]

    # skip the Oracle database dump; it's around 50Gb
    if "ORACLE_EXPORT" in filename:
        print("skipping oracle export file")
        continue

    # skip any 'deprecated' files ...
    if "deprecated" in filename:
        print("skipping deprecated file")
        continue

    print(" filepath : <%s> " % filepath)
    print(" filename : <%s> " % filename)
    ## print(f"downloading {filepath} and saving as {filename}...", end="")

    # get the URL for downloading the file
    r = requests.get(url+filepath, auth=(email, password))
    print(r)
    print(r.json())
    download_url = r.json()["url"]
    print(download_url)

    if ( 1 ):
        # get the file itself
        r = requests.get(download_url, stream=True)
    
        # read the file and write it to disk chunk by chunk
        with open(filename, "wb") as f:
            for chunk in r.iter_content(chunk_size=1024):
                if chunk:
                    f.write(chunk)
    
        print(" done ")

    else:
        print(" skipping the actual download ... ")
    
print(" exiting now ")

