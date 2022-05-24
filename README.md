# B2B STACK - Ruby Challenge

<br />

## Technical Guidelines

- Ruby - version 3.0.3
- Rails - version 6.1.6
- PostgreSQL

## Project Guidelines

Create an API that allows users to manage their TO-DO list
Provide API documentation

<br />

The API have the following features:

- ToDo List View
  (http://<localhost>/api/v1/list_managers/:id)
- Create an item
  (http://<localhost>/api/v1/list_managers/:id/add_item)
- Remove an item
  (http://<localhost>/api/v1/list_managers/:id/remove_item/:id)
- Update an item status ( New_item, Read, Executed, Archived)
  (http://<localhost>/api/v1/list_managers/:id/items/:id/update_status)

Obs: By default, items are created with status "new_item"
