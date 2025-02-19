CC=g++
CFLAGS=-std=c++11 -Wall

BUILD_DIR    = ./build
SRC_DIR    = ./src
INCLUDE_DIR  = ./include

${BUILD_DIR}Main: ${BUILD_DIR}/Alimentacao.o ${BUILD_DIR}/Cuidador.o ${BUILD_DIR}/Animal.o ${BUILD_DIR}/Main.o ${BUILD_DIR}/Ursidae.o ${BUILD_DIR}/Herpestidae.o
	${CC} ${CFLAGS} ${BUILD_DIR}/*.o -o Main

${BUILD_DIR}/Animal.o: ${INCLUDE_DIR}/Animal.hpp ${SRC_DIR}/Animal.cpp
	${CC} ${CFLAGS} -I ${INCLUDE_DIR}/ -c ${SRC_DIR}/Animal.cpp -o ${BUILD_DIR}/Animal.o

${BUILD_DIR}/Cuidador.o: ${INCLUDE_DIR}/Cuidador.hpp ${SRC_DIR}/Cuidador.cpp
	${CC} ${CFLAGS} -I ${INCLUDE_DIR}/ -c ${SRC_DIR}/Cuidador.cpp -o ${BUILD_DIR}/Cuidador.o
	
${BUILD_DIR}/Alimentacao.o: ${INCLUDE_DIR}/Alimentacao.hpp ${SRC_DIR}/Alimentacao.cpp
	${CC} ${CFLAGS} -I ${INCLUDE_DIR}/ -c ${SRC_DIR}/Alimentacao.cpp -o ${BUILD_DIR}/Alimentacao.o
	
${BUILD_DIR}/Ursidae.o: ${INCLUDE_DIR}/Ursidae.hpp ${SRC_DIR}/Ursidae.cpp
	${CC} ${CFLAGS} -I ${INCLUDE_DIR}/ -c ${SRC_DIR}/Ursidae.cpp -o ${BUILD_DIR}/Ursidae.o

${BUILD_DIR}/Herpestidae.o: ${INCLUDE_DIR}/Herpestidae.hpp ${SRC_DIR}/Herpestidae.cpp
	${CC} ${CFLAGS} -I ${INCLUDE_DIR}/ -c ${SRC_DIR}/Herpestidae.cpp -o ${BUILD_DIR}/Herpestidae.o

${BUILD_DIR}/Main.o: ${INCLUDE_DIR}/Animal.hpp ${INCLUDE_DIR}/Alimentacao.hpp ${INCLUDE_DIR}/Cuidador.hpp ${INCLUDE_DIR}/Herpestidae.hpp ${INCLUDE_DIR}/Ursidae.hpp ${SRC_DIR}/Main.cpp
	${CC} ${CFLAGS} -I ${INCLUDE_DIR}/ -c ${SRC_DIR}/Main.cpp -o ${BUILD_DIR}/Main.o

clean:
	rm -f ${BUILD_DIR}/*
