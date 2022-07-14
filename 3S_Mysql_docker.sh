echo "=============================================[ Subindo container Mysql ]============================================="
sudo docker login 
sudo docker rum mysql:5.7
sudo docker run -e MYSQL ROOT PASSWORD=root --name Mysql_server -d -p 3306:3306 mysql:5.7

echo "=============================================[ Concluido ]============================================="
