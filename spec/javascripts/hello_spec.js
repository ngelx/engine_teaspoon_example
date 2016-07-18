
//import Hello from "hello";

describe("Hello", () => {
    it("greets the user", () => {
        let hello = new Hello();
        expect(hello.greet()).toEqual("Hello world!");
    });
});
