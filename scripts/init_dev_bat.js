const fs = require("fs");
const path = require("path");
const CWD = path.resolve(__dirname);
const PROJ_ROOT = path.dirname(CWD);

console.log("helloworld");

fs.readdirSync(".").forEach((root_dirs) => {
  // console.log(dirs);
  console.log(root_dirs);
  console.log(`${PROJ_ROOT}/${root_dirs}`);
  console.log(fs.lstatSync(`${PROJ_ROOT}/${root_dirs}`).isDirectory());
  if (
    root_dirs.indexOf("hugo") > -1 &&
    fs.lstatSync(`${PROJ_ROOT}/${root_dirs}`).isDirectory()
  ) {
    try {
      try {
        fs.mkdirSync(`${PROJ_ROOT}/${root_dirs}/scripts`, { recursive: true });
      } catch (error) {
        console.log(error);
      }
      fs.writeFileSync(
        `${PROJ_ROOT}/${root_dirs}/scripts/dev.ps1`,
        `
# generated by scripts\\init_dev_bat.js

hugo server --disableFastRender

        `.trim(),
        { create: true }
      );
    } catch (error) {
      console.log(error);
    }
  }
});
