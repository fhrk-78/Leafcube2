# コンパイラとオプションの設定
CXX = g++
CXXFLAGS = -Wall -Wextra

# ソースファイルとビルドディレクトリの設定
SRCDIR = src
BUILDDIR = bin
BUILDDIRO = out
SRCTARGET = main.cpp
TARGET = Leafcube.exe
TARGETO = Leafcube.o

# ターゲットと依存関係、ビルドコマンドの指定
all: $(BUILDDIR)/$(TARGET)

$(BUILDDIR)/$(TARGET): $(BUILDDIRO)/$(TARGETO)
	$(CXX) $(CXXFLAGS) -o $@ $<

$(BUILDDIRO)/$(TARGETO): $(SRCDIR)/$(SRCTARGET)
	$(CXX) $(CXXFLAGS) -o $@ -c $^

# クリーンアップ用ターゲット
clean:
	rm -f $(BUILDDIR)/$(TARGET) $(BUILDDIRO)/$(TARGETO)
