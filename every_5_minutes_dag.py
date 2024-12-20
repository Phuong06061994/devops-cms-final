from airflow import DAG
from airflow.operators.dummy import DummyOperator
from datetime import datetime, timedelta

# Default arguments
default_args = {
    'owner': 'airflow',
    'depends_on_past': False,
    'email_on_failure': False,
    'email_on_retry': False,
    'retries': 1,
    'retry_delay': timedelta(minutes=1),
}

# Define the DAG
with DAG(
    dag_id='every_5_minutes_dag',
    default_args=default_args,
    description='A DAG that runs every 5 minutes',
    schedule="*/5 * * * *",  # Cron expression for every 5 minutes
    start_date=datetime(2024, 1, 1),
    catchup=False,
) as dag:

    start = DummyOperator(task_id='start')
    end = DummyOperator(task_id='end')

    start >> end
