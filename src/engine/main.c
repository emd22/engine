#include <stdio.h>
#include <stdlib.h>
#include <GL/glew.h>
#include <GL/gl.h>
#include <GLFW/glfw3.h>

#include <logging/log.h>
#include <shader.h>

typedef struct {
    int width;
    int height;
    GLFWwindow *window;
} window_t;

int opengl_3_supported = 0;

void triangle_draw(GLuint vertexbuffer) {
    // 1rst attribute buffer : vertices
    glEnableVertexAttribArray(0);
    glBindBuffer(GL_ARRAY_BUFFER, vertexbuffer);
    glVertexAttribPointer(
    0,                  // attribute 0. No particular reason for 0, but must match the layout in the shader.
    3,                  // size
    GL_FLOAT,           // type
    GL_FALSE,           // normalized?
    0,                  // stride
    (void*)0            // array buffer offset
    );
    // Draw the triangle !
    glDrawArrays(GL_TRIANGLES, 0, 3); // Starting from vertex 0; 3 vertices total -> 1 triangle
    glDisableVertexAttribArray(0);
}

void glfw_setup(window_t *window) {
    if (!glfwInit()) {
        engine_log("Error: failed to initialize GLFW\n");
        exit(EXIT_FAILURE);
    }

    glfwWindowHint(GLFW_SAMPLES, 4);
    if (!opengl_3_supported) {
        glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 2);
        glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 1);
    }
    else {
        glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
	    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
    }
	glfwWindowHint(GLFW_RESIZABLE, GL_TRUE);
    // glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);
    
    window->window = glfwCreateWindow(window->width, window->height, "Game Engine", NULL, NULL);
    
    if (window->window == NULL) {
        engine_log("Error: failed to open GLFW window. Intel GPU's are not 3.3 compatible.\n");
        glfwTerminate();
        exit(EXIT_FAILURE);
    }

    glfwMakeContextCurrent(window->window);
    glewExperimental = GL_TRUE;

    if (glewInit() != GLEW_OK) {
        engine_log("Error: failed to initialize GLEW\n");
        exit(EXIT_FAILURE);
    }
}

GLuint triangle_setup() {
    GLuint VertexArrayID;
    glGenVertexArrays(1, &VertexArrayID);
    glBindVertexArray(VertexArrayID);

    const GLfloat g_vertex_buffer_data[] = {
        -1.0f, -1.0f, 0.0f,
        1.0f, -1.0f, 0.0f,
        0.0f,  1.0f, 0.0f,
    };

    // This will identify our vertex buffer
    GLuint vertexbuffer;
    // Generate 1 buffer, put the resulting identifier in vertexbuffer
    glGenBuffers(1, &vertexbuffer);
    // The following commands will talk about our 'vertexbuffer' buffer
    glBindBuffer(GL_ARRAY_BUFFER, vertexbuffer);
    // Give our vertices to OpenGL.
    glBufferData(GL_ARRAY_BUFFER, sizeof(g_vertex_buffer_data), g_vertex_buffer_data, GL_STATIC_DRAW);
    return vertexbuffer;
}

int main() {
    window_t window;
    window.width = 1024;
    window.height = 768;

    engine_log_init();
    glfw_setup(&window);

    engine_log("chut %d", 5);

    GLuint vertexbuffer;
    vertexbuffer = triangle_setup();

    glfwSetInputMode(window.window, GLFW_STICKY_KEYS, GL_TRUE);

    GLuint program_id = load_shaders("shaders/test.vert", "shaders/test.frag");

    do {
        glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
        glUseProgram(program_id);
        triangle_draw(vertexbuffer);
        glfwSwapBuffers(window.window);
        glfwPollEvents();
    } while (glfwGetKey(window.window, GLFW_KEY_ESCAPE) != GLFW_PRESS &&
             glfwWindowShouldClose(window.window) == 0);

    //use EXIT_FAILURE and EXIT_SUCCESS for cross compat.
    return EXIT_SUCCESS;
}