pkill -f taskwork

# 1 worker ----------------------------
# ./build/bin/taskwork &


# # 2 worker ----------------------------
# ./build/bin/taskwork &
# ./build/bin/taskwork &


# # 3 worker ----------------------------
# ./build/bin/taskwork &
# ./build/bin/taskwork &
# ./build/bin/taskwork &

# 4 worker ----------------------------
./build/bin/taskwork &
./build/bin/taskwork &
./build/bin/taskwork &
./build/bin/taskwork &


# # 5 worker ----------------------------
# ./build/bin/taskwork &
# ./build/bin/taskwork &
# ./build/bin/taskwork &
# ./build/bin/taskwork &
# ./build/bin/taskwork &


ps -ax | grep taskwork

# ./build/bin/tasksink &
# ./build/bin/taskvent &
