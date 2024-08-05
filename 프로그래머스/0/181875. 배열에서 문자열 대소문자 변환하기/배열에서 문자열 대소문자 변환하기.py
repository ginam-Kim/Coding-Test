def solution(strArr):
    answer = []
    for i, arg in enumerate(strArr):
        if i%2==0:
            answer.append(arg.lower())
        else:
            answer.append(arg.upper())
    return answer

# 모범 답안
def solution(strArr):
    return [s.lower() if i % 2 == 0 else s.upper() for i, s in enumerate(strArr)]