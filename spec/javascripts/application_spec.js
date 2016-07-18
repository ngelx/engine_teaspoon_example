describe("My Bang Feature", function() {
  it("Bang should be defined", function() {
    expect(failer).toBeDefined();
  });

  it("Bang should bang!", function() {
    expect(failer()).toBe(false);
  });
});
