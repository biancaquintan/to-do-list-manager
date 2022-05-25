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

The API have the following endpoints:

- <b>ToDo List</b> <br />
    <i>http://[localhost]/api/v1/list_managers/:id</i> <br />
  This endpoint can be called with pagination params as below: <br />
    <i>http://[localhost]/api/v1/list_managers/:id?page=2&per_page=10</i>
- <b>Create an item</b> <br />
    <i>http://[localhost]/api/v1/list_managers/:id/add_item</i>
- <b>Remove an item</b> <br />
    <i>http://[localhost]/api/v1/list_managers/:id/remove_item/:id</i>
- <b>Update an item status</b> <br />
    <i>http://[localhost]/api/v1/list_managers/:id/items/:id/update_status</i> <br />
  By default, items are created with status <i>new_item</i>, and can be set as (<i>new_item, read, executed, archived</i>) 
  


