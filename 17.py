#paths = [[0]*10,[1]*10]+[[0]*10]*9

paths = [[0]*10,[1]*10]+[[0 for _ in range(10)] for _ in range(9)]
reachable = [[4,6],[6,8],[7,9],[4,8],[0,3,9],[],[0,1,7],[2,6],[1,3],[2,4]]

for length in xrange(2,11):
  for start in xrange(10):
    paths[length][start] = 0
    for num in reachable[start]:
      paths[length][start] += paths[length-1][num]

print paths[10][1]
