const LoginPage = () => {
    return (
      <>
        <div className="container w-600 h-600">
          <h1 className="text-3xl">Login</h1>
          <form action="">
            <label htmlFor="email">Email</label>
            <input type="email" name="email" id="email" />
            <label htmlFor="password">Password</label>
            <input type="password" name="password" id="password" />
          </form>
        </div>
      </>
    );
}

export default LoginPage