Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC1BA194
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 00:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FC9DC433D6
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 00:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663203053;
	bh=nvCiTu9XZjXkByCC8ykScqzU1lzxoO1hPlaX6lELj2Q=;
	h=To:Subject:From:Date:From;
	b=ZTQ38+YaURkvf1t3oeamqHCxz49f+pFDJgPb1xxguDDNPh6W0HtKOJSDbuRU9cHUO
	 hhMgYjAfR1WulwF5gj1Ku5Z4wEZ3qHUSXXQ2qkgDo+GycubZjQ1FMyucM7wRBCex8o
	 b2YTWGeaPV7zILvEj0zHvRD78pLVKm77P4CAooJR0UFmILQLw+zueyvh6dO+nHlm5c
	 iFvgZnY2zQ/kNWsEj2Umv2NH+po/eRQZb3ncl7W2/XbSEAUe3RS2pxtWugAL3zuV3b
	 S7DwyOW0GhNpfVFa0ATr3Tj/lytABLcpSo8X/eFIoiB4Zl/TFfpSkzrLFw9MpY3PcZ
	 MTLGnhcObTIvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5606FECAAD3
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 00:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166320305331.7663.12537146697600488554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a65899138dcde287dae24a0696d7a92de00b717cc7a9f2f6becde7439c97e964
Date: Thu, 15 Sep 2022 00:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663203053
