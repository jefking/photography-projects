1. Image Review
- remove photos that don't meet rating system (Archive)
- WIP: Current Year: 2017 - Current Photo: 5808

2. Image Dup
- De-dup photos to try to condense to the best...

3. Copy from NAS
- We are going to need to switch this to year/folder 2022-2026:
```sudo rsync -rltDv --delete --progress /mnt/photos/2022/ /home/jef/Pictures/photos/inprogress/2022/```
```sudo rsync -rltDv --delete --progress /mnt/photos/2023/ /home/jef/Pictures/photos/inprogress/2023/```
```sudo rsync -rltDv --delete --progress /mnt/photos/2024/ /home/jef/Pictures/photos/inprogress/2024/```
```sudo rsync -rltDv --delete --progress /mnt/photos/2025/ /home/jef/Pictures/photos/inprogress/2025/```
```sudo rsync -rltDv --delete --progress /mnt/photos/2026/ /home/jef/Pictures/photos/inprogress/2026/```

4. Back up images on Mirrored External (SSD)
```sudo rsync -rltDv --delete --progress /home/jef/Pictures/photos/inprogress/ /media/jef/1.44.1-72806/photos/inprogress/```

5. Back up to Mirrored External (HDD)
```sudo rsync -rltDv --delete --progress /home/jef/Pictures/photos/inprogress/ /media/jef/bk.bk/photos/inprogress/```
```sudo rsync -rltDv --delete --progress /media/jef/1.44.1-72806/photos/processed/ /media/jef/bk.bk/photos/processed/```

6. Image Find
- Copy's 5 start photos to directory

7. Image Rando
- Splits folder into 4 gb sub-folders