x,y=(int(input()),input().split())
w,z=(int(input()),input().split())
M=set(y)
N=set(z)
p=N.difference(M)
q=M.difference(N)
r=p.union(q)
print ('\n'.join(sorted(r, key=int)))
