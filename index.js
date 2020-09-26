const rust = import("./pkg");

rust
  .then((fn) => {
    fn.run_alert("World!");
    fn.create_stuff();
  })
  .catch(console.error);
