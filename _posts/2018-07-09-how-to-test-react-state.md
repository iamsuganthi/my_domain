---
author: enthudrives
layout: post
comments: true
title: How to test state change in React components?
excerpt: 'Do not test the state. Testing the new value of state from your unit test is like testing private methods'
slug: how-to-test-react-state
categories:
- react
- state
- redux
- jest
- enzyme
- test state in react
- how to test react state in component
---

#### Do not test the state! 

Although it is tempting to use `state()` from enzyme to test the value of your component state from jest tests, it is a code smell to do so. Because, `state` is internal to the component. Testing the new value of state from your unit test is like testing private methods (in java/ruby..). 

### How else do I test state change?
Now that is a different question.

When writing unit tests in jest/jasmine, it is a good practice to describe the behavior of your component. Tests are documentation after all. `state` is an internal detail of how you have implemented the functionality.

Example:
--------


```
class Counter extends Component {
    constructor(props) {
        super(props);
        this.state= {
            count: 1
        };
    }
    
    increment = () => {
        this.setState((prevState) => ({count: prevState.count + 1}));
    }
    
    render() {
          return (
            <div>
                  <h2>Number of votes: {this.state.count}</h2>
                    <p> This is my code. Please upvote!</p>
                    <button onClick={this.increment}>Upvote!</button>
             </div>
            );
    }
}
```

In the example above, clicking on the button increments the number of votes on screen.

To test this in jest,

```
it('updates number of votes', () => {
  const wrapper = shallow(<Counter/>);
  
  wrapper.find('button').simulate('click');
  wrapper.update(); // Read: enzyme update
  
  expect(wrapper.find('h2').text()).toEqual('Number of votes: 2');
});
```

_To conclude, use your tests to verify the behavior and not the implementation._

What is your take on testing state changes? Let me know in the comments below! Happy coding :) 

