Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2259E3CC300
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 18:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779041434; cv=none; b=DpRbYMBBsn6/95K1uOLOfiDoTSrsWH99/y5RS5BP1tWiGl0WayaTLvUY7nqq2Z9S3690WQfHswdXXO0EtBP10WT+dIygduhsH3XHB+6qBwTA1T53xA1keAYEgDAY6Il++4I0gRPfFd7x8phgcjyZcUq/WFZ5sk8FuvsNbnSenrc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779041434; c=relaxed/simple;
	bh=0o5C24RJFjVtyuPXwKOrhkP6UZoelg8dLAdAwZXfi0o=;
	h=To:Subject:From:Message-Id:Date; b=C9kBm57n2Kk7TYVPNKB/wqihZZg1rY9CpccywzzDArQO0cfGHHZsqeEIHHgr5uO2NYfBOaKZ6SC3yt8eKmosQPXghlSVUiULk8h0gMnCAxtY173x3V3Ja/Y4X4RKrpZJ/hnB6F5AEknCnDc2JU/WGWIZOq5osaQFa7baRTVjaug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iiInnK5Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iiInnK5Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9A86C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779041433;
	bh=0o5C24RJFjVtyuPXwKOrhkP6UZoelg8dLAdAwZXfi0o=;
	h=To:Subject:From:Date:From;
	b=iiInnK5YbdrKtQJ7pG52joWkzOtBtl4FMmLgVYl+E4CL0+or4Bc1aCHFKeoH62Mmw
	 1gDl1x0SpIabCpjGWM38Qs7rzECJPkMjAQ6w7TBp3GmD6slADQ4BVeqzJoxO6UEwud
	 U8mXI8kCGmWUaG4kQi0aDpx9vQ8S6fH6dG8r9d3WlarYfQfW0jn2UGaUu1sFslJher
	 EGWrFHoOqweZwuyeAqYiIgl7bP2JabxbBah6HRTg75XTgVl6NGAYGL9D5v9IFko1Cg
	 3m2cGpch2cp5i6eFbAIY+c5XvfxwFu4kYQE+P2LjGAVIohjRN+Oy8XfSi1uHV/sNW5
	 eka/vWeRda2tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA8EDCD4F47
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177904143368.12414.7784640425500926480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed0f7968862d65e824d990289449ec7511186271bf2cf3fa539a6d506978a275
Date: Sun, 17 May 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779041433
