Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3694C8CE
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 00:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778113054; cv=none; b=nJmVktdQ7044Lua/jgwuYhryX/1o8wmeQzE9kxLQQ+pSzmtokiiH1wBcbJ5C9VCSn5otR12qT2d8zAKGiwwdkz7TgH4HgrvF3xPGYHy26Uqv7ErD2EE0H/u58S6yd4fjZG2HadB+QH2wanUZv6ttkUV8Ou5RMsYIopgg0d2kvBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778113054; c=relaxed/simple;
	bh=7g0naEazIXTjq0CE0BzMKTD7xTbqPVFmvO/DkXy9nOQ=;
	h=To:Subject:From:Message-Id:Date; b=FBVDmIIKAt5MYqDOPJAyyUg9UQsUb6wdY1Uz3x3Cv/NeRkGH+HDVQo5iaO5S7Vo4Yw74gzpvzfdVLMAeYXYSPJp2uh0XsdiQ3FVKNk3vLXfYDV3D0/n3mcJYp+a7xO3jLRUTlg+xpr3Uzywgr13zSWNM15qmvggp1My5AdsqgY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vRYB6GnP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vRYB6GnP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C420CC2BCB0
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 00:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778113053;
	bh=7g0naEazIXTjq0CE0BzMKTD7xTbqPVFmvO/DkXy9nOQ=;
	h=To:Subject:From:Date:From;
	b=vRYB6GnP6OMZqYFnmvAPWFYPsFS3yfVzjkAOAC5S4M8/TB9SGYsz+T6sAxjn9nXN6
	 2XQN5HcON9i/2RWJ1AUltHJywDnx/e/P1vUF0r/UfIlom8ovS9AHqOHGygwJTrw+xK
	 p9WGQsIdVmqpSSAdhuxzAR77q1H+f7l2WD68OZOY6+etQsGYeOOJUE4dsAvMQoNMp8
	 lMY9MwNJd0N0X8yetMY3vzi+FMZYA2tzk6I3sELVdlJVtVozul0Sip2/z7MKOflHY7
	 l5MUch2jrh3l9jOboujJpnspVNXnzvX6bnmpQfjnThtiUlaIxz/pkmg0jjBtFntC6G
	 yO8CkAz7BV6zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF847CD3439
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 00:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177811305369.26605.8268000489105835823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10bd70bb9e4c7551918d2533367712fedd564f734f36f9949d7ddb27352f15ea
Date: Thu, 07 May 2026 00:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778113053
