
// Incoming vertex position
in vec3 position;

uniform mat4 model_matrix;

uniform mat4 view_matrix;

void main() {
	// The global position is in homogenous coordinates
    vec4 globalPosition = model_matrix * vec4(position, 1);

    // The position in camera coordinates
    vec4 viewPosition = view_matrix * globalPosition;

    // For now the position is just the position in view coordinates
    gl_Position = viewPosition;
}
