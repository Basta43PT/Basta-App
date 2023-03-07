const ReactRefreshWebpackPlugin = require("@pmmmwh/react-refresh-webpack-plugin");

module.exports = {
  // other configuration options
  module: {
    rules: [
      // other rules
      {
        test: /\.jsx?$/,
        use: [
          // other loaders
          {
            loader: require.resolve("babel-loader"),
            options: {
              // other options
              plugins: [require.resolve("react-refresh/babel")],
            },
          },
        ],
        // other options
      },
    ],
  },
  plugins: [
    // other plugins
    new ReactRefreshWebpackPlugin(),
  ],
  // other configuration options
};
