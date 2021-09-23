# Set ACLs for UI user barney using the sr-acl-cli container
docker exec -it sr-acl-cli /confluent-5.0.4/bin/sr-acl-cli --config /confluent-5.0.4/bin/schema-registry.properties --add -s '*' -p 'barney' -o '*'
Write-Host 0
Start-Sleep -s 5

# Example ACL commands for all users:
docker exec -it sr-acl-cli /confluent-5.0.4/bin/sr-acl-cli --config /confluent-5.0.4/bin/schema-registry.properties --add -o SUBJECT_READ -p '*' -t '*'
Write-Host 1
Start-Sleep -s 5
docker exec -it sr-acl-cli /confluent-5.0.4/bin/sr-acl-cli --config /confluent-5.0.4/bin/schema-registry.properties --add -o SUBJECT_COMPATIBILITY_READ -p '*' -t '*'
Write-Host 2
Start-Sleep -s 5
docker exec -it sr-acl-cli /confluent-5.0.4/bin/sr-acl-cli --config /confluent-5.0.4/bin/schema-registry.properties --add -o GLOBAL_COMPATIBILITY_READ -p '*'
Write-Host 3
Start-Sleep -s 5
docker exec -it sr-acl-cli /confluent-5.0.4/bin/sr-acl-cli --config /confluent-5.0.4/bin/schema-registry.properties --add -o GLOBAL_SUBJECTS_READ -p '*'
Write-Host 4
Start-Sleep -s 5

# Example ACL commands for capability datadelivery-gexyo user ted:
docker exec -it sr-acl-cli /confluent-5.0.4/bin/sr-acl-cli --config /confluent-5.0.4/bin/schema-registry.properties --add -o SUBJECT_WRITE -p 'ted' -t 'datadelivery-gexyo.*'
Write-Host 5
Start-Sleep -s 5
docker exec -it sr-acl-cli /confluent-5.0.4/bin/sr-acl-cli --config /confluent-5.0.4/bin/schema-registry.properties --add -o SUBJECT_COMPATIBILITY_WRITE -p 'ted' -t 'datadelivery-gexyo.*'
Write-Host 6
Start-Sleep -s 5
docker exec -it sr-acl-cli /confluent-5.0.4/bin/sr-acl-cli --config /confluent-5.0.4/bin/schema-registry.properties --add -o SUBJECT_DELETE -p 'ted' -t 'datadelivery-gexyo.*'
Write-Host 7
Start-Sleep -s 5
