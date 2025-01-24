#J-N 기법(J-N Technique)을 사용한 조절변수 범위에서의 유의미한 효과 탐구
#목적: 조절변수(Z)의 값이 특정 범위에서 독립변수(X)의 효과를 유의미하게 만드는지를 탐구.
#J-N 기법은 interactions 패키지의 johnson_neyman() 함수를 사용하여 쉽게 구현할 수 있습니다.

   #예제 코드:
# 라이브러리 로드
library(interactions)

# 상호작용 모델 생성
model <- lm(Y ~ X * Z, data = data)

# J-N 기법 적용
johnson_neyman(model, pred = X, modx = Z, alpha = 0.05)

   #결과:
#johnson_neyman() 함수는 조절변수(Z)의 어떤 범위에서 독립변수(X)가 종속변수(Y)에 유의미한 영향을 미치는지 계산합니다.
#출력 결과는 다음과 같습니다:
#Lower bound: X의 효과가 유의미해지기 시작하는 Z의 값.
#Upper bound: X의 효과가 유의미하지 않아지는 Z의 값.


  #시각화:
#J-N 기법의 결과를 시각화하려면 plot_model() 함수를 사용할 수 있습니다.

# Johnson-Neyman 분석 결과 시각화
install.packages("sjPlot")
plot_model(model, type = "int", pred = "X", modx = "Z")

  #결론
#단순 경사선 그래프와 신뢰구간 추가: ggplot2를 활용하여 예측값과 신뢰구간을 시각화.
#J-N 기법: interactions 패키지의 johnson_neyman() 함수를 활용하여 조절변수 범위의 유의미성을 탐구. 결과를 시각화하여 조절변수의 효과를 명확히 전달.
