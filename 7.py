from PIL import Image
import time

start_time = time.time()
colors = {}
img = Image.open("scream.jpg")
pix = img.load()
for i in range(img.size[0]):
  for j in range(img.size[1]):
    colors[pix[i,j]] = 1 if pix[i,j] not in colors else colors[pix[i,j]]+1

print ("-----%f sec-----" % (time.time()-start_time))

print sorted(colors.values())[-10]
