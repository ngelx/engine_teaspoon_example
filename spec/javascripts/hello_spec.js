
import Hello from "hello";

/*
// This Does not work at all, it is skip.
describe("Hello", () => {
    it("greets the user", () => {
        let hello = new Hello();
        expect(hello.greet()).toEqual("Hello world!");
    });
});
*/

describe("Hello es6 module", function() {
  it("GlobalHello should be defined", function() {
    expect(Hello).toBeDefined();
  });
  it("greets the user", function() {
    var hello = new Hello();
    expect(hello.greet()).toEqual("Hello world!");
  });

});
