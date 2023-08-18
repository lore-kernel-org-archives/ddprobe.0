Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AC62174DA
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 22:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C967FC433C8
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 22:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692399248;
	bh=Ka6MUI49O/qaS3zRl5J2COKiZ3n74WJkdGbdL2ZmFFM=;
	h=To:Subject:From:Date:From;
	b=KxKOUh7Hkph0UHKoS0InC/cPGqsBanyNadQHRwm2JkyPRq5lWqq0+hW3KWZd1DVHP
	 3N9rgZTNVR8T6ssmtoO3TKADbo1SGMBF1+68D0NPSMR6mLW1TFF71sD1b0KttNrrza
	 aDtnbgsexI79/ZRL9qrSP09lmEzqz3NF68qtTYUs5lhttr7UzBehe+tjYUiHLm39S2
	 PIbtd0u77eqFbKZdjamef+DuwkiPjVEEUGAUuMDLTMsPpEiqwhfHA1Q4f2Jyg/lhhh
	 QI0A9xr76pdqXpiRuFIYtXaWSQyfCPg14eUGvrKzcRBntlveJPTOrBm7U6DNPRz4NR
	 oIZ3GX8ol08lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A967BEE499B
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 22:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169239924867.28674.15381625496301537902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcd65faa0e49d52bfef9384ba54da1afa3385cc461dd4beda4e009c6ba8d76bd
Date: Fri, 18 Aug 2023 22:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692399248
