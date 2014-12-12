print len(filter( None, [i if str(i)==str(i)[::-1] and str((int(oct(i))))==str(int(oct(i)))[::-1] else None for i in xrange(1000001)] ))
