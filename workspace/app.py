import cv2

TITLE = "docker on WSL2"
cv2.namedWindow(TITLE, cv2.WINDOW_AUTOSIZE)

# 画像表示
img = cv2.imread("fireworks.jpg")
cv2.imshow(TITLE, img)

print("ESCで終了...")
while True:
    if cv2.waitKey(1) == 0x1B:
        break

cv2.destroyAllWindows()
