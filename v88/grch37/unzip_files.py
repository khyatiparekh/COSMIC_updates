import pandas as pd
import numpy as np
import os
import gzip
import shutil

def unzip_files():
	files = os.listdir(os.path.abspath('./v88/grch37'))
	print(files)
	gziped = []
	for i in files:
		if '.gz' in i:
			gziped.append(i)

	print(gziped)
	for i in gziped:
		path = os.path.abspath('./v88/grch37') + '/' + i
		fout = path.replace('.gz','')
		with gzip.open(os.path.abspath('./v88/grch37')+'/'+i,'rb') as f_in:
			with open(fout,'wb') as f_out:
				shutil.copyfileobj(f_in,f_out)
		print(i+' converted')
		#os.remove(i)

if __name__ == '__main__':
	unzip_files()
