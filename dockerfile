FROM ubuntu:latest
RUN apt-get update
RUN apt-get install -y python3

CMD ["python3", "-c", "\
def isHappy(n):\n\
  if (n < 1) or (n > 2**31-1):\n\
    return False\n\
\n\
  s = []\n\
  while n != 1:\n\
    if n in s:\n\
      return False\n\
    s.append(n)\n\
    n = sum(int(i) ** 2 for i in str(n))\n\
  return True\n\
\n\
print(isHappy(19))\n\
print(isHappy(2))\n\
"]