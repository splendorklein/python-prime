#python
''' 
This code uses a list to store the prime numbers 
that are less than the current Fibonacci number's 
square root. It speeds up the test of whether the 
current Fibonacci number is prime when n is large.
'''
PrimeList = [2,3]

def creatPrimeList (Squareroot):
  
  ListLen = len(PrimeList)
  if (Squareroot>= PrimeList[ListLen-1]):
    i = PrimeList[ListLen-1]
    while i<=Squareroot:
        i += 2
        PrimeTest = True
        isquareroot = i ** 0.5
        for p in PrimeList:
            if p > isquareroot:
                break
            if i % p == 0:
                PrimeTest = False
                break
        if PrimeTest:
            PrimeList.append(i)
            
def confirmPrime (k):
    Squareroot = k**0.5
    creatPrimeList (Squareroot)
    PrimeTest = True
    for p in PrimeList:
        if k % p ==0:
            PrimeTest = False
            ##print 'factor = ' + str(p)
            break
    return PrimeTest

def creatFi (n):
    Fibonacci = [1,1,2]
    new = 0
    if n>=1:
        print Fibonacci[0]
    else:
        print 'invalid input'
    if n>=2:
        print Fibonacci[1]
    if n>=3:
        print 'BuzzFizz'
        j = 3
        while j < n:
            new =  Fibonacci[1] + Fibonacci[2]
            Fibonacci[1] = Fibonacci[2]
            Fibonacci[2] = new
            j += 1
            ##print 'the ' + str(j) +' Fibonacci is ' + str(new)
            if ((new % 3 ==0) & (new % 5 !=0)):
                print 'Buzz'
            elif ((new % 3 !=0) & (new % 5 ==0)):
                print 'Fizz'
            elif ((new % 3 ==0) & (new % 5 ==0)):
                print 'FizzBuzz'
            elif confirmPrime(new):
                print 'BuzzFizz'
            else:
                print new
    


# test the code here
creatFi(60)
