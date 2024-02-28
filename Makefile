.PHONY: all
all: clean target run
	echo $@
up:
	docker-compose -f compose.yaml up

down:
	docker-compose -f compose.yaml down

target:
	dotnet build dotnet_identity_keycloak.sln

clean:
	dotnet clean

restore:
	dotnet restore

watch:
	dotnet watch --project dotnet_identity_keycloak.csproj run
	
run:
	dotnet run --project dotnet_identity_keycloak.csproj
