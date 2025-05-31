Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3651A21B1AB
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748692794; cv=none; b=VPlwpaGJQa2/uEOqa0Ep4/Si1+6xsKU4+61XN1ZS/iy/o2erIP/6NJWID6yC2hrtK6KSjoS+SVbNJNMOz7LGPu88F08oXjQSXX2EeqPrkCDkU5lYe7c+b3nD06KSE/2BriennnX37piNOwGffJLWiqoaVarB0nI51dZH1RUbJdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748692794; c=relaxed/simple;
	bh=78FgjA17kqCFj+sFnr1s+t1ZNqIeMxqSB5qBpBI2KxQ=;
	h=To:Subject:From:Message-Id:Date; b=tqIi3z1hT9iSEMAYsBHOdT0m5gbMxMQ766CPGTLuc1bVJVHZonbaT7x+5Sqtjd9VU+tKL+DyTbBpZTzuMGqMQTyUDzUgbGWUj1Y3e+5W2RPRgCyh3cU4+pspUgOVOMi4nqbYn460xFFYQNO6MhWXaLqXPLz6P8rABe2YYQkPbK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PGczAczM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PGczAczM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E75C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748692793;
	bh=78FgjA17kqCFj+sFnr1s+t1ZNqIeMxqSB5qBpBI2KxQ=;
	h=To:Subject:From:Date:From;
	b=PGczAczMdwQKqJJ7lf+7oiUYs7lbOwtDTTvjRlhYhGsKiRDmROYEiYiZ7PKN7t3Jp
	 6gM9wBw8dxOhTP6XYmBEDRnUZzPB9nj3fUCukIaEgwzllGB2X4zfrjT7MJDewae1OM
	 5G2gSiJ1E1AX43XX661e2rbaDt9YLsNCJSDYVuafsqe2KXOzymR8EZp31lJSCaq43+
	 WMDOoGzcWyUf1vLjJ7tDLapzBB4JYjfm3CEDbu9Unh9m2cJWV9C/d94T5TaulqaVYf
	 38pB29GI+TDSlgUJ/+eEci0NwaQ5vn3xX9isjdxTAEswenQVk43i66IwmqNVffpoz/
	 kST5RoDnj48Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92866C5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174869279357.22779.5802540402583488424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d75dba20716c462be1b455e4e3cc56ccbda50c288d2325516d18be447670164
Date: Sat, 31 May 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748692793
