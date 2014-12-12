from PIL import Image

colors = {}

img = Image.open("scream.jpg")
pix = img.load()

for i in range(img.size[0]):
  for j in range(img.size[1]):
    colors[pix[i,j]] = 1 if pix[i,j] not in colors else colors[pix[i,j]]+1

print len(colors)
print img.size
print pix[0,0] #Get the RGBA Value of the a pixel of an image
colors["lasser"] = 1 if "lasser" not in colors else colors["lasser"]+1
colors["kasser"] = 1 if "kasser" not in colors else colors["kasser"]+1
print colors
