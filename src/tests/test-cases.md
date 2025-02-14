# Test cases for Todo app

## Key functionalities:
- Add task
- Remove task
- Edit task
- Filter tasks list
- Mark task as completed

## Test Cases

## TC1: Add task to the tasks list.
Description: Verify add task functionality and check if correct information is displayed on tasks list.

Prerequisites: User has todo app opened (link: https://wc-react-todo-app.netlify.app/).

Steps:

1. 
- Action: Push 'Add Task' button.
- Expected Result: Add TODO modal window opens with Title text box and Status dropdown menu.

2. 
- Action: Add title in the title text box.
- Expected Result: Title added.
3. 
- Action: Check that the status of the task is 'Incomplete' by default.
- Expected Result: Status is 'Incomplete' by default.
4. 
- Action: Push "Add Task' button.
- Expected Result: Task is added to the tasks list with correct title, status and date when it was added.

## TC2: Remove task from the tasks list.

Description: Verify remove task functionality.

Prerequisites: User has todo app opened (link: https://wc-react-todo-app.netlify.app/) and there is one task added to the tasks list.


Steps:

1. 
- Action: Using the task from prerequisites push the 'bin' button. 
- Expected Result: 'Bin' button is pushed and the task is removed from the list.

2. 
- Action: Check that there is 'No Todos' text.
- Expected Result: 'No Todos' text displayed.

## TC3: Edit task.

Description: Verify edit task functionality by changing the task title.

Prerequisites: User has todo app opened (link: https://wc-react-todo-app.netlify.app/) and there is at least one task added to the tasks list.


Steps:

1. 
- Action: Using the task from prerequisites push the 'pen' button. 
- Expected Result: Update TODO modal window opens with Title text box and Status dropdown menu.

2. 
- Action: Change title by adding '-edited' suffix.
- Expected Result: Title changed.
3. 
- Action: Push Update Task button.
- Expected Result: Update Task modal window disappears and a confirmation message 'Task Updated successfully' pops at the bottom of the screen. 
4. 
- Action: Check the title of the edited task.
- Expected Result: The title is correct with '-edited' suffix.

## TC4: Filter tasks list.

Description: Verify if tasks on the TODO list can be filtered.

Prerequisites: User has todo app opened (link: https://wc-react-todo-app.netlify.app/) and there are at least two tasks, one incomplete and one completed.


Steps:

1. 
- Action: Change the filter of the TODO list from 'All' to 'Incomplete' by click on the drop down menu in the top right corner of the tasks list.
- Expected Result: Filter changed, and only one task which is incomplete appears on the list.

2. 
- Action: Change the filter to 'Completed'.
- Expected Result: Filter changed, and only one task which is completed appears on the list.

4. 
- Action: Change the filter again to 'Completed'. 
- Expected Result: The task which was checked as 'Completed' in step 3 appears on the list with crossed out title.

5. 
- Action: Change the filter to 'All'.
- Expected Result: Both tasks appear on the tasks list. One with checked checkbox and crossed out title.


## TC5: Mark task as completed.

Description: Verify if tasks on the TODO list can be marked as completed.

Prerequisites: User has todo app opened (link: https://wc-react-todo-app.netlify.app/) and there is at least one incompelte task. The filter of the TODO list is set to 'All' 


Steps:

1. 
- Action: Check the checkbox for one of the tasks from prerequisites as 'Completed'. 
- Expected Result: The task is marked as completed, checkbox is checked and the title of the task is crossed out. 

2. 
- Action: Uncheck the checkbox on the task from step 1.
- Expected Result: The checkbox is empty and the title of the task is no longer crossed out. The status of the task is 'Incomplete'. 