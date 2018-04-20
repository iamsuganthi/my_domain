---
author: enthudrives
comments: true
layout: post
title: Connect with MergeProps
categories:
- Tech
- React
- Redux
- Javascript
keywords: react, redux, containers, provider, mock store, mergeProps, connect, filter props
---

`MergeProps` is the third argument to the [connect](https://github.com/reactjs/react-redux/blob/master/docs/api.md) function. It is a function which is used to select a slice of the props from state and dispatch.

`SaveAllContainer` maps the todo items from store to props and a `save` prop which dispatches an action to save all items.

```
const mapStateToProps = (state) => {
    return {
        items: state.items
    };
};

const mapDispatchToProps = (dispatch) => {
    return {
        save: (items) => dispatch({type: "SAVE_ALL", items})
    };
};

const SaveAllContainer = connect(mapStateToProps, mapDispatchToProps)(SaveAll);
```

```
const SaveAll = ({save, items}) => {
    return <button onClick={() => save(items)}>Save All </button>;
};
```
`items` is being passed to the component and back to the container. But, the presentational component does not need to know about the `items`. 

I would like it, if the `save` function in props knows about the `items` to be saved, so that the items need not be passed in props.
Ideally, the container should return something like this:

```
{
    save: () => dispatch({type: "SAVE_ALL", items: state.items})
}
```

The best place to combine `state` and `dispatch` is `mergeProps`. 

```
const mapDispatchToProps = (dispatch) => {
    return {
        dispatchSave: (items) => dispatch({type: "SAVE_ALL", items})
    };
}

const mergeProps = (propsFromState, propsFromDispatch, ownProps) {
    return {
        save: propsFromDispatch.dispatchSave(propsFromState.items)
    };
};

const SaveAllContainer = connect(mapStateToProps, mapDispatchToProps, mergeProps)(SaveAll);
```

The `SaveAll` component is not aware of the `items` anymore. `mergeProps` is now responsible for passing the items to be saved.

When the third argument is not passed to `connect`, the default implementation of `mergeProps` combines the `ownProps`, `mapStateToProps` and `mapDispatchToProps`.

`mergeProps` is where you can filter the props being passed to the component. Especially in situations like above, where you intend to use properties from store as parameters to dispatch actions, `mergeProps` is the cleanest choice.
