def solution(num_list):
    if len(num_list) >= 11:
        answer = sum(num_list)
    else:
        answer = eval(str('*'.join([str(n) for n in num_list])))
    return answer