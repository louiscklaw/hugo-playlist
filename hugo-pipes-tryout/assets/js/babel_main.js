helloworld = () => {
  console.log("helloworld");
};

let test = {
  abc: "123",
};

let abc = test?.helloworld;

console.log("test", test);
console.log("abc", abc);
