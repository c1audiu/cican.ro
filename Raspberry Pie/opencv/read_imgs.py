#read pictures in folder for processing 
from glob import glob
for fn in glob('folder/*.jpg'):
     im = cv2.imread(fn)
     #
     # your processing here.
