#include <GL/gl.h>
#include <stdio.h>
#include <stdlib.h>

#include <shader.h>
#include <util/string.h>
#include <logging/log.h>

GLuint load_shaders(const char *vertex_path, const char *fragment_path) {
    GLuint VertexShaderID = glCreateShader(GL_VERTEX_SHADER);
    GLuint FragmentShaderID = glCreateShader(GL_FRAGMENT_SHADER);

    // Read the Vertex Shader code from the file
    string_t vertex_shader_code;
    string_new(&vertex_shader_code);

    FILE *vertex_shader_stream = fopen(vertex_path, "r");

    if (vertex_shader_stream != NULL) {
        char line[256];
        while (fgets(line, sizeof(line), vertex_shader_stream)) {
            strcat(line, "\n");
            string_cat_c(&vertex_shader_code, line);
        }
        fclose(vertex_shader_stream);
    }
    else {
        engine_log("Cannot find file %s\n", vertex_path);
        exit(EXIT_FAILURE);
	}

    //frag shader

    string_t fragment_shader_code;
    string_new(&fragment_shader_code);

    FILE *fragment_shader_stream = fopen(fragment_path, "r");

    if (fragment_shader_stream != NULL) {
        char line[256];
        while (fgets(line, sizeof(line), fragment_shader_stream)) {
            strcat(line, "\n");
            string_cat_c(&fragment_shader_code, line);
        }
        fclose(fragment_shader_stream);
    }
    else {
        engine_log("Cannot find file %s\n", fragment_path);
        exit(EXIT_FAILURE);
	}

    //compile vertex shader

    GLint result;
    int info_log_length;

    printf("Compiling shader : %s\n", vertex_path);
    char const * VertexSourcePointer = vertex_shader_code.string;
    glShaderSource(VertexShaderID, 1, &VertexSourcePointer , NULL);
    glCompileShader(VertexShaderID);

    // Check Vertex Shader
    glGetShaderiv(VertexShaderID, GL_COMPILE_STATUS, &result);
    glGetShaderiv(VertexShaderID, GL_INFO_LOG_LENGTH, &info_log_length);
    if (info_log_length > 0) {
        char vertex_error_message[512];
		glGetShaderInfoLog(VertexShaderID, info_log_length, NULL, &vertex_error_message[0]);
        printf("%s\n", &vertex_error_message[0]);
    }

    // Compile Fragment Shader
    printf("Compiling shader : %s\n", fragment_path);
    char const * FragmentSourcePointer = fragment_shader_code.string;
    glShaderSource(FragmentShaderID, 1, &FragmentSourcePointer , NULL);
    glCompileShader(FragmentShaderID);

    // Check Fragment Shader
    glGetShaderiv(FragmentShaderID, GL_COMPILE_STATUS, &result);
    glGetShaderiv(FragmentShaderID, GL_INFO_LOG_LENGTH, &info_log_length);

    if (info_log_length > 0) {
        char fragment_error_message[512];
        glGetShaderInfoLog(FragmentShaderID, info_log_length, NULL, &fragment_error_message[0]);
        printf("%s\n", &fragment_error_message[0]);
	}


	// Link the program
	printf("Linking program\n");
	GLuint ProgramID = glCreateProgram();
	glAttachShader(ProgramID, VertexShaderID);
	glAttachShader(ProgramID, FragmentShaderID);
	glLinkProgram(ProgramID);

	// Check the program
	glGetProgramiv(ProgramID, GL_LINK_STATUS, &result);
	glGetProgramiv(ProgramID, GL_INFO_LOG_LENGTH, &info_log_length);
	if (info_log_length > 0) {
        char program_error_message[512];
		glGetProgramInfoLog(ProgramID, info_log_length, NULL, &program_error_message[0]);
		printf("%s\n", &program_error_message[0]);
	}
	
	glDetachShader(ProgramID, VertexShaderID);
	glDetachShader(ProgramID, FragmentShaderID);
	
	glDeleteShader(VertexShaderID);
	glDeleteShader(FragmentShaderID);

	return ProgramID;
}