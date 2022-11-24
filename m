Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0328D2F58
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 18:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2DFFC433C1
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 18:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669312854;
	bh=f44qoMXDlL/xdiAXIkavYPz2jKN7MBJyflsgBVHdDuQ=;
	h=To:Subject:From:Date:From;
	b=MBUUe0bJcs+ZceybAXhpNe7VzNwtbMHug5G+8wuRZRxYMecR5cy3ZOHRVQ7lAetGX
	 yy7qyXiDVR9LRREM4wF/8eVZISqhrp184Ff6FqjakbX2cJbAmISa46GOUZtiasegiM
	 Jxam0sBeMgHt1e6czTtGLePQwtEurzH9xzkMXJk+zPKQoGu6cp6Qo40qYT8zdkBvP0
	 nUuCAWb3f3Ieo3QbV2bchplEDMI3NdsPCL6wQLC5I/yxKX4/tp2XLlvz3VMzbgID8e
	 uLct1DtuOLKiBlD1I2/dUiYhWORnk20V+brXbsWxY6FF19PoPgzxp4zS5ffngsFu7H
	 vafrSRM0vNLBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 812C5C433FE
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 18:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166931285451.12031.8341576598111072623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be52b0d987177bc6170ef26a1abe53d89e7178bd347d31bac552c33c08467f3e
Date: Thu, 24 Nov 2022 18:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669312854
