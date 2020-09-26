clean:
	rm -rf ./dist
	rm -rf ./pkg

build:
	make clean
	cargo build --release  --target wasm32-unknown-unknown
	wasm-bindgen target/wasm32-unknown-unknown/release/rustwasmhello.wasm --out-dir ./dist
	yarn build
