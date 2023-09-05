# 총 재생시간을 저장할 변수를 초기화합니다.
total_duration=0

# 현재 디렉토리의 모든 WAV 파일에 대해 반복합니다.
for file in $file_dir/*.wav; do
  # soxi를 사용하여 각 파일의 재생시간을 초 단위로 가져옵니다.
  duration=$(soxi -D "$file")
  
  # bc 명령어를 사용하여 총 재생시간을 계산합니다.
  total_duration=$(echo "$total_duration + $duration" | bc)
done

# 총 재생시간을 출력합니다.
echo "Total duration: $total_duration seconds"
