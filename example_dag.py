from datetime import datetime, timedelta
from airflow import DAG
from airflow.operators.python import PythonOperator

# Define the default arguments
default_args = {
    'owner': 'phuongnv63',
    'depends_on_past': False,
    'email_on_failure': False,
    'email_on_retry': False,
    'retries': 1,
    'retry_delay': timedelta(minutes=5),
}

# Define the DAG
with DAG(
    'example_dag',
    default_args=default_args,
    description='A simple example DAG',
    schedule_interval=timedelta(days=1),  # Run daily
    start_date=datetime(2024, 1, 1),
    catchup=False,
    tags=['example'],
) as dag:

    # Define the task
    def print_message():
        print("Hello from Airflow DAG!")

    hello_task = PythonOperator(
        task_id='print_message',
        python_callable=print_message,
    )

    # Set the task dependencies
    hello_task
