
describe("My Bang Feature", function() {
  it("Bang should be defined", function() {
    expect(failer).toBeDefined();
  });

  it("Bang should bang!", function() {
    expect(failer()).toBe(false);
  });
});


describe("Hello es6 module", function() {
  it("GlobalHello should be defined", function() {
    expect(GlobalHello).toBeDefined();
  });
  it("greets the user", function() {
    var hello = new GlobalHello();
    expect(hello.greet()).toEqual("Hello world!");
  });

});
