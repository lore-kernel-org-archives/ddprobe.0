Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36D7E748E
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 03:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719027743; cv=none; b=anxleEW7p1naVzBVvDsX0eXs74VpaXmYaXffP0YiOO7DwYodjIXwxZNGHoBdwBXp53Ejtd/VCa8PZcGYI0BXa/xJMd9thw0B2VD24ub7Hll0Hs7PMBFdDTg3Q6T7fI6tkvncXuaVIe/gvZDAvOXH+wQQkazGSZk4DS7WH5ZzyEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719027743; c=relaxed/simple;
	bh=pLmcmOeCOzCuMOf7ZyqfxmAvHz4kZ0DLdV6D1mfKRdE=;
	h=To:Subject:From:Message-Id:Date; b=Gmry7BcWVzBAIxRLeGkjGhp1Gab6F+qeWoBAC1ozmq8/AGrLYY/RP4TF9uPaXvyIWXMt7z5w/9UX5ezmMtx1zZMQW2ERaiW7p/VckIypNgt2nKNBgxKufLsuYv5dyT68N+s2rTw3dIojXXRi6Qy8gqfJQpR6hdBICv9dMn/4UWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jSjinE/G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jSjinE/G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4732C32786
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 03:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719027742;
	bh=pLmcmOeCOzCuMOf7ZyqfxmAvHz4kZ0DLdV6D1mfKRdE=;
	h=To:Subject:From:Date:From;
	b=jSjinE/GxAG9mSQKLayBq6KFGoYUIjmxoeFgr/EW+uCDAVsNb6KR6UHRTQWj7ALik
	 6xyeazJG576hDhaj4zyUpS2HwWBbAMeDbdgjMZwaX/vcb0d6My1Bt4oa0dD1ZcmpBz
	 b7PQpRTmO89f5fenYWh8PVyTwuPqUF2TUqE9LIEO5GXQ37U9ejHCAicPpBjBy6RMNM
	 e8aa3i+3JTXpy7RiRVeUCXb5/ltw+46uPfNmpwxjHyhYUeFqSZqHYkkK/Uk/wOBn+H
	 fYguu6g/PROsyD+5iWM8mdlgrh4UHBia8gHOqLHwT315QJkYu7SViTuIZlH2aNAwfp
	 +egBS5KFHL4dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAF7AC27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 03:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171902774275.4006.13024678836897038463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa5f0bb0e81f1cb9b2cf75c59aa8b10221eae74ecab71f42a7dc9a5d19a070e8
Date: Sat, 22 Jun 2024 03:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719027742
