def solution(strArr):
    answer = []
    for i, arg in enumerate(strArr):
        if i%2==0:
            answer.append(arg.lower())
        else:
            answer.append(arg.upper())
    return answer