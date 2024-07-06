import random

# Step 1: Define Worker Class
class Worker:
    def __init__(self, id, name, gender, salary):
        self.id = id
        self.name = name
        self.gender = gender
        self.salary = salary
        self.level = None

# Step 2: Generate Worker List
workers = []
for i in range(1, 401):
    name = f"Worker_{i}"
    gender = random.choice(["Male", "Female"])
    salary = random.randint(5000, 30000)
    workers.append(Worker(i, name, gender, salary))

# Step 3: Generate Payment Slips and Step 4: Implement Conditional Statements
for worker in workers:
    try:
        if 10000 < worker.salary < 20000:
            worker.level = "A1"
        if 7500 < worker.salary < 30000 and worker.gender == "Female":
            worker.level = "A5-F"
        
# Output the payment slip
        print(f"ID: {worker.id}, Name: {worker.name}, Gender: {worker.gender}, Salary: ${worker.salary}, Level: {worker.level}")
    except Exception as e:
        print(f"Error processing worker {worker.id}: {e}")
