const std = @import("std");
const glfw = @import("zglfw");
const vk = @import("vulkan-zig");

const Allocator = std.mem.Allocator;

pub fn main() !void {
    try glfw.init();
    defer glfw.terminate();

    const window = try glfw.createWindow(600, 600, "Cubix", null, null);
    defer glfw.destroyWindow(window);
    glfw.makeContextCurrent(window);

    while (!window.shouldClose()) {
        glfw.pollEvents();

        window.swapBuffers();
    }
}
