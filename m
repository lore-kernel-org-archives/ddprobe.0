Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9B812E06EA
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754927393; cv=none; b=IFMLTvZWz5FbQLmt6KoBU9Byex1+Dg++5MIALxAFxuXZT1+V3AvMXuT8MLYBOmpBX/I6HukLszpXmFZyTJnUm3cDreNLHVY7hEInvlC/A4nJlJbGt6AJyLW97ooaHZnIvRpBJonZ/XkwJUZULxvi6mfMfdtmHx5AiHlF/vqfe30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754927393; c=relaxed/simple;
	bh=YEgezDPUDjAlLVJnR+BBfbkyPqs2mEXgPEiSdp/Bh+Y=;
	h=To:Subject:From:Message-Id:Date; b=uf6Go3bhLtLP3NFVrta5X6EaITVG53qE3d/ENpbJPphNrVR0+lCHeqysF5jrYNBfZFZd3hzXc9Cv9PC8cEWMjGL6PMSV3pXier1M4UWS6P5NNnZF2CONfhwZhXUu6NH1Y2BfPH3ipDoFmhbUedE+XMo6OyqoNJBSbqJvwoisDT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CgDrmpo5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CgDrmpo5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BD0C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754927393;
	bh=YEgezDPUDjAlLVJnR+BBfbkyPqs2mEXgPEiSdp/Bh+Y=;
	h=To:Subject:From:Date:From;
	b=CgDrmpo5aU9Yp5twS5ylD0Ddj1vqWC8qtN754KIM7qkrL9c/v+3eXvyO15Gsei4Vp
	 kjaSGZKnRxEXmOzFDoAuoDoxVa9fPrTdyrJWnX6I6cCg7DH3oRyQnuJaLI6YDJ9ys5
	 0dENAoS6hPZJjItIYY8CORgl4i0AG6MmtkNpzjzkMlq2Jpbc+nDJ+apj94goxnzKFr
	 qU7Y0YXePthYSK2Rx4NRK/NoYkw19KwSyp2/+2hyiDyDls9l6FbabCz8aLlRCoe4FH
	 dO0xIVMWXR4l/xUjAZGeEi6hS++wRO+pVNim3GBZ1KH4Fal75qcDvTPCdYJGyAYHPx
	 gPJITuMR1vLvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90596CA0ECD
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175492739358.32465.14074800806429147714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 715434af13143e2d0d502353ec558a467ff820e98e550eb3e3ed96256e5732dc
Date: Mon, 11 Aug 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754927393
