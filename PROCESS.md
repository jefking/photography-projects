1. Image Review
- remove photos that don't meet rating system (Archive)
- WIP: Current Year: 2022 - Current Photo:  0
2. Image Dup
- De-dup photos to try to condense to the best...

3. Mount NAS
```sudo mount -t cifs //192.168.4.250/home/onedrive/Pictures /mnt/photos -o rw,user,username=jef```

1. Copy from NAS
- We are going to need to switch this to year/folder 2022-2026:
```sudo rsync -rltDv --delete --progress /mnt/photos/2022/ /home/jef/Pictures/photos/inprogress/2022/```
```sudo rsync -rltDv --delete --progress /mnt/photos/2023/ /home/jef/Pictures/photos/inprogress/2023/```
```sudo rsync -rltDv --delete --progress /mnt/photos/2024/ /home/jef/Pictures/photos/inprogress/2024/```
```sudo rsync -rltDv --delete --progress /mnt/photos/2025/ /home/jef/Pictures/photos/inprogress/2025/```
```sudo rsync -rltDv --delete --progress /mnt/photos/2026/ /home/jef/Pictures/photos/inprogress/2026/```

1. Back up images on Mirrored External (SSD)
```sudo rsync -rltDv --delete --progress /home/jef/Pictures/photos/inprogress/ /media/jef/1.44.1-72806/photos/inprogress/```
1. Back up videos on Mirrored External (SSD)
```sudo rsync -rltDv --delete --progress /home/jef/Videos/videos/ /media/jef/1.44.1-72806/video```

1. Back up to Mirrored External (HDD)
```sudo rsync -rltDv --delete --progress /home/jef/Pictures/photos/inprogress/ /media/jef/bk.bk/photos/inprogress/```
```sudo rsync -rltDv --delete --progress /media/jef/1.44.1-72806/photos/processed/ /media/jef/bk.bk/photos/processed/```

1. Image Find
- Copy's 5 start photos to directory

1. Image Rando
- Splits folder into 4 gb sub-folders