# BT Commerce

This is a test project which mocks an ecommerce site. 
Major items in the stores are toilet papers and face masks.

The app has the following screens:
* Splash screen
* Onboard screens
* Product or market screen
* Item detail page
* Profile screen

This e-commerce app has a cart feature whose database is a list. Items can be added 
and discount is applied when items are in even numbers. A dialog is shown when an item
is added to a cart.

The cart screen has to states
* One when there is no item in the cart
* When there is(are) item(s) in the cart.


# Explainer video

A short video has been added to explain how the app works.

- [Explainer video](https://www.loom.com/share/921954adae504e5c9624bd236d52e01c)



# Test App

Sure, you can test the functionality of this App from the link below. The app is 'provided
in different apks to suit any device.

- [Test Apps](https://github.com/JAtoms/Bt-Commerce/tree/dashboard/assets/test_app)


## Folder and code structure

Folders and codes are organized in a loose and shallow feature-first fashion.
In `lib/src`, you'll therefore find directories such as `ads`, `audio`
or `main_menu`. Nothing fancy, but usable.

```
lib
├── src
│   ├── components
│   ├── helpers
│   ├── models
│   ├── screens
          ├── cart
              ├── components
          ├── details
              ├── components
          ├── home
              ├── components
          ├── profile
              ├── components
          ├── splash
              ├── components
├── ...
└── main.dart

