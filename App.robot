*** Settings ***
Library     SeleniumLibrary
Resource    Open_and_Login_keywords.resource
Resource    Wishlist.resource
Resource    Multiple_Products.resource
Resource    Register.resource
Resource    Single_Product.resource
Resource    Shipping_Address.resource


#Suite Setup     Open and Login the Account
Suite Setup     Open and Register the Account



*** Test Cases ***
TC 1:
    I want to Login the Account
    I Add Product in Wishlist
    Given I hover the Electronics tab and select the Camera & Photo
    #When I open the Shopping cart page
    #Open and Register the Account

TC 2:
    Given I Ordering Multiple Products
    AND I Enter the Shipping Address and Place Order


#TC 3:
 #   Given I Add Product in Wishlist
