import os

# Define structure project
project_structure = {
    "resources": {
        "pages": [],
        "keywords": [],
        "variables": [],
    },
    "tests": [],
    "libraries": [],
    "outputs": []       
}

# Function to create the structure
def create_structure(base_path, structure):
    for name, content in structure.items():
        path = os.path.join(base_path, name)
        os.makedirs(path, exist_ok=True)
        if isinstance(content, dict):
            create_structure(path, content)
        elif isinstance(content, list):
            for item in content:
                with open(os.path.join(path, item), "w") as f:
                    pass  # Crear archivos vacíos

# Create the structure of the project
create_structure(".", project_structure)
print("Project structure created successfully.")