#!/bin/bash

echo 'deleting existing'
rm -rf /home/jef/Pictures/display

mkdir /home/jef/Pictures/display

cd ./image-find

cargo build --release
./target/release/imagefind /home/jef/Pictures/photos /home/jef/Pictures/display/temp

cd ..
cd ./image-rando

cargo run --release
cargo run --release -- --src /home/jef/Pictures/display/temp --dst /home/jef/Pictures/display/grouped --seed 123


echo 'deleting temp all'
rm -rf /home/jef/Pictures/display/temp