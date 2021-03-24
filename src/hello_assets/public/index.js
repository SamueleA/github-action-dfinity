import hello from 'ic:canisters/hello';

hello.greet(window.prompt("Enter your name1:")).then(greeting => {
  window.alert(greeting);
});
