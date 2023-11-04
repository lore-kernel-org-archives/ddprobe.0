Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06075C13C
	for <ddprobe@lists.linux.dev>; Sat,  4 Nov 2023 14:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jsCDemg1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81C48C433C7
	for <ddprobe@lists.linux.dev>; Sat,  4 Nov 2023 14:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699108696;
	bh=+ERc9+b/cgfNDPAzZ+h0FGICrGCW4A9js8CBwdxzVwA=;
	h=To:Subject:From:Date:From;
	b=jsCDemg1m3zY+bTWgB9DhL7YZwgC3gOGVNmVZbO0TdqY/LBsJbNy2rLzUFavJd2Zh
	 Vbjpx4CJI2OgIZTildkZ630U73yhTgxuBdX1iHGf1D5+iex1+dFW30cwK57dyW1Z7P
	 3ruKJ1OX0BoafPPfP9U+/kh3oOmvl9sJSAhUyYOLi1AlbybYKbCPxjpvEL073l/Knt
	 67fk2AgxEAlS1bAklSLD6n+0NzUGUh0ObRUQEiPgcmD8fcqaHrwLiaqMk92SrHst+U
	 38DuS+KxDzpdKPK+PJFUz1wydIOTr6TWVjNsIorELNdDsMud/NOYkS4/KIJKxUbRj0
	 5SHnG7Og5Zxng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63DD0C4332F
	for <ddprobe@lists.linux.dev>; Sat,  4 Nov 2023 14:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169910869640.23961.10075604715851770666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17740e4f572ee159a10b6614c6bb9ae0ef59639397c171d3d1ae357ae698af96
Date: Sat, 04 Nov 2023 14:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699108696
