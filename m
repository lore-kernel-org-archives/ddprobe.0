Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E4163271E5
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 09:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763371914; cv=none; b=GglvfHpTVtNHcGjWQRAfPe20kvX4kUarMmxOoIaP64sRRgZPYrMJ2qZqBS6LaMRmlspNcqpmg1h0VR+e5n15y0PJ0gA/v/b/xdbKAdHkNH5nBdO8/DjxpxVqC0l05G5PhZ4J/TOkUy5nvSfkQYe0kewHklw3Uubx5Bx6G9CPevk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763371914; c=relaxed/simple;
	bh=L5MPzWUzEKu+eoftzg8gxRot8hn8vo9Mt1vIoCwQEQ8=;
	h=To:Subject:From:Message-Id:Date; b=dSsI1xcBvHM3IwXiu3jLh3NFHQPS8WGgvqrsJFcuUy1HUlG/Jnk9Az+9jwVp9y0vLiD3rrjaYsZgFJA3xikV2x/TqBKcuO2nT4VIlnuF65kE19FB+O7SM2mnlfmWOw7V7Yi9bbYK24TuzaQFrW8AMw+Fm4QH3PY650ty/6L7UNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u/Vd5UVm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u/Vd5UVm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0EA1C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 09:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763371913;
	bh=L5MPzWUzEKu+eoftzg8gxRot8hn8vo9Mt1vIoCwQEQ8=;
	h=To:Subject:From:Date:From;
	b=u/Vd5UVmY+m5DzHgEOusrKo7ogYI5ArAee6LMkTRFVnOpLtVtH65kg/J7kRep0mP4
	 73qPha5QAJ/mmpufqtKHfcJ4p2YQ4jku6G7ffQCt+4mCuZjOA3dfWTU3/BjAf9rB56
	 uEwwmnnlGIcKyeoogI4xTP7dZfbtRPShAGNGTTEi+FEbuny7HRCe9lrakst80HTjux
	 M8nW3oOoRg+M2GYZcyilTEMneIj7xEXaPAVxgFLZaCdffOngUmafHUeyfOMDirYBVS
	 0QsZMnuJK8w6bnGH31243eERBtB4KL75dhvh7dDTVF7uygV1VEwQPL5X5QFSZ5J4NV
	 Uk5q36mwEr6GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BBCCEBF61
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 09:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176337191358.6394.14374063547440853077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83eabe8678e9e226216377432b068896a72b470feda2bab9287582e23f5c140f
Date: Mon, 17 Nov 2025 09:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763371913
