#define GLFW_INCLUDE_GLU
#include <stdio.h>
#include <stdlib.h>
#include <GLFW/glfw3.h>
#include <GL/glu.h>

void solidSphere(GLdouble radius, GLint slices, GLint stacks){
	glBegin(GL_LINE_LOOP);

	GLUquadricObj* quadric = gluNewQuadric();
	gluQuadricDrawStyle(quadric, GLU_LINE);

	gluSphere(quadric, radius, slices, stacks);
	gluDeleteQuadric(quadric);
	glEnd();
}
