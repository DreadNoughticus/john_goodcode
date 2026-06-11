const std = @import("std");

var prng: std.Random.DefaultPrng = .init(blk: {
    var seed: u64 = undefined;
    std.posix.getrandom(std.mem.asBytes(&seed));
    break :blk seed;
});
const rand = prng.random();

pub fn main() !void {
    std.debug.print("Hello World!\n", .{});
}

fn sortArray() !void {
    std.debug.print("Coming soon", .{});
}

test "Array sorting" {
    const randomArray: [8]u8 = std.Random.array(rand, u8, 8);
    std.debug.print(randomArray);
    try std.testing.expect(true);
}