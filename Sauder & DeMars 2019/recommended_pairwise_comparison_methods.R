# 1. 데이터 준비 ----------------------------------------------------
# 내장 데이터셋 PlantGrowth 로드
data("PlantGrowth")

# 데이터 확인 (상위 6개 행 출력)
head(PlantGrowth)
# PlantGrowth 데이터는 두 변수로 구성:
# 1. weight: 식물의 무게
# 2. group: 그룹 (3개의 처리 그룹 - ctrl, trt1, trt2)

# 2. Games-Howell 테스트 --------------------------------------------
# Games-Howell 테스트는 비등분산(heteroscedasticity) 및 비등표본 크기(unequal sample size)에 적합
# PMCMRplus 패키지 설치 및 로드
install.packages("PMCMRplus") # 한 번만 설치
library(PMCMRplus)

# Games-Howell 테스트 실행
# weight ~ group: 종속 변수(weight)와 독립 변수(group)를 지정
# data = PlantGrowth: 분석에 사용할 데이터셋
games_howell_result <- gamesHowellTest(weight ~ group, data = PlantGrowth)

# 결과 출력
print(games_howell_result)

# 3. Dunnett’s C 테스트 --------------------------------------------
# Dunnett’s C 테스트는 비등분산 조건에서 제1종 오류를 안정적으로 통제
# DescTools 패키지 설치 및 로드
install.packages("DescTools") # 한 번만 설치
library(DescTools)

# Dunnett’s C 테스트 실행
# PostHocTest 함수는 aov()를 사용해 ANOVA 결과를 기반으로 분석
dunnetts_c_result <- PostHocTest(aov(weight ~ group, data = PlantGrowth), method = "dunnettC")

# 결과 출력
print(dunnetts_c_result)

# 4. Dunnett’s T3 테스트 -------------------------------------------
# Dunnett’s T3 테스트는 비등분산 및 비등표본 크기에서도 강력한 방법
# DescTools 패키지를 사용해 실행
dunnetts_t3_result <- PostHocTest(aov(weight ~ group, data = PlantGrowth), method = "dunnettT3")

# 결과 출력
print(dunnetts_t3_result)

# 5. Tamhane’s T2 테스트 -------------------------------------------
# Tamhane’s T2 테스트는 비등분산 조건에서 강력한 성능 제공
# userfriendlyscience 패키지 설치 및 로드
install.packages("userfriendlyscience") # 한 번만 설치
library(userfriendlyscience)

# Tamhane’s T2 테스트 실행
# oneway 함수는 일원분산분석(ANOVA)와 사후 검정을 함께 수행
tamhane_result <- oneway(y = PlantGrowth$weight, x = PlantGrowth$group, posthoc = "tamhane")

# 결과 출력
print(tamhane_result)
