Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69F897F
	for <ddprobe@lists.linux.dev>; Thu, 24 Aug 2023 20:34:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9A60C433C9
	for <ddprobe@lists.linux.dev>; Thu, 24 Aug 2023 20:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692909248;
	bh=2rGHzJQJVoRDHAuuoRnNZaujL1rHAMWMeezD1UwCIgk=;
	h=To:Subject:From:Date:From;
	b=Kzrq9z3gEznvtgsp66gwehtmCWxjD7hVIQA7eDys+J0tyZ/ePmZPm42HrR7ExVauu
	 SHdldwl6Ye84WJUCBLpRHUDPbLiZBSSZzyyqFQJ5f+08qeD8n4xd3bv65Sr4Q0b3vQ
	 WG2Iqq22GQiEMGkMBjeEjLd5Ke1/F1IgxqHMWamYMmHzaH4a80Me9yNV0BLl7BiA+B
	 Bj5E7l4rt14PHgR/T+l8z4rSqoaxui5jDEpECGfpmGcrRt1T8UfzoGLXsSfp809Iir
	 FjoBmcLtaIRSsFm+yD3qMq75ZKCnM6wER9OBmwiwpInhIMg3vxh+HJwpZmU8rAw/cg
	 GDXHzr5AyEc2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC26AC3DA6F
	for <ddprobe@lists.linux.dev>; Thu, 24 Aug 2023 20:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169290924869.20062.15989012539847066058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cec465d8ad4c27ee8bf98474af1c813f2887eba289a7909717eea5a07f20cca8
Date: Thu, 24 Aug 2023 20:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692909248
