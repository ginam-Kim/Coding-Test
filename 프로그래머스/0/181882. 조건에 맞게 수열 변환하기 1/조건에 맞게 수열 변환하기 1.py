def solution(arr):
    def tmp(x):
        if (x >= 50)&(x%2==0):
            return x/2
        elif (x < 50)&(x%2==1):
            return x*2
        else:
            return x
    answer = list(map(tmp, arr))
    return answer