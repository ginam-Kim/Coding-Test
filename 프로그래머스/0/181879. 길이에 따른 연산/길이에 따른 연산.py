def solution(num_list):
    if len(num_list) >= 11:
        answer = sum(num_list)
    else:
        answer = eval(str('*'.join([str(n) for n in num_list])))
    return answer

# math 라이브러리를 이용한 풀이
from math import prod
def solution(num_list):
    return sum(num_list) if len(num_list)>=11 else prod(num_list)