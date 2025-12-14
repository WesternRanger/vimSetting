from PIL import Image

# 需要拼接的图片路径
img_paths = ["19.09.51.png", "19.10.42.png", "19.11.03.png", "19.11.14.png", "19.11.26.png"]

# 打开所有图片
imgs = [Image.open(p) for p in img_paths]

# 例：纵向拼接
widths, heights = zip(*(i.size for i in imgs))
max_width = max(widths)
total_height = sum(heights)

new_img = Image.new("RGB", (max_width, total_height), (255, 255, 255))

y_offset = 0
for im in imgs:
    new_img.paste(im, (0, y_offset))
    y_offset += im.size[1]

new_img.save("merged.png")