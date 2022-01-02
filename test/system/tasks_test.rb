require "application_system_test_case"

class TasksTest < ApplicationSystemTestCase
  setup do
    @task = tasks(:one)
  end

  test "visiting the index" do
    visit tasks_url
    assert_selector "h1", text: "Tasks"
  end

  test "should create task" do
    visit tasks_url
    click_on "New task"

    check "Done" if @task.done
    check "Important" if @task.important
    fill_in "Name", with: @task.name
    check "Recurring" if @task.recurring
    check "Urgent" if @task.urgent
    click_on "Create Task"

    assert_text "Task was successfully created"
    click_on "Back"
  end

  test "should update Task" do
    visit task_url(@task)
    click_on "Edit this task", match: :first

    check "Done" if @task.done
    check "Important" if @task.important
    fill_in "Name", with: @task.name
    check "Recurring" if @task.recurring
    check "Urgent" if @task.urgent
    click_on "Update Task"

    assert_text "Task was successfully updated"
    click_on "Back"
  end

  test "should destroy Task" do
    visit task_url(@task)
    click_on "Destroy this task", match: :first

    assert_text "Task was successfully destroyed"
  end
end
