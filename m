Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5308CA53
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 18:44:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C14F8C433C8
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 18:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693075448;
	bh=4Q1ee5291FD5d2Mvtt7EmkDVSz5t50Mi0qiWZkREdp8=;
	h=To:Subject:From:Date:From;
	b=kBIczHQGxe/qDYBR7MmpgHTK6pGSoaWr2woywEaSTxMkpnf2wS8jHgYgos3RnDKtu
	 adMxSR3Db+nJDhNxckNTpOXXjYa2Q6M2IWuowEK5qiRQc/NAH2ZZnq2QGRnLH7tQTc
	 +4YzImOgyxcVfcJlh8jwKOKAkmXbQg49I/s1aR3oN+70ztVKwiaEt9jWbmhMycX4Ky
	 9e9ejZyFXF0Wmky8z7asqZWuQgSVXBG7rIpAeqz0mWf7NTPd8v1h35rqj2Sf+W+kIF
	 qx8HsTUSnpS/ymmOHLqReRkrKPuqLbEQkvxbgyHeduu1rSGaF+BMNISJqNicO8a8H1
	 rPTWERpAqlfRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A85A7C83F11
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 18:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169307544868.10850.10270918676391333724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2619e614ee61d24bed42acd7033c0bdcdc13ab922ef8f22d5b0b43bc2e6a2102
Date: Sat, 26 Aug 2023 18:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693075448
