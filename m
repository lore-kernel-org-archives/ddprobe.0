Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3DB017C3
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 01:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81A91C433C1
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 01:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670290854;
	bh=PDpmwbQ9Q7sDbzJkcCsEmrbk0ToLetjItPktD+dZYoQ=;
	h=To:Subject:From:Date:From;
	b=M+b47BEYDVsEg0pnId+5Uidq+OTGdHKZoTNKEJdcBdYGFub/JA4C03Cf0zzaHs1cu
	 8X+aX1WDC9sbXtGKbjHSZv6/t05WRenwkwqI+psGAk3A/2zHfywUdXTrD0zTzi0kvw
	 xgbfhbLxv07kBsgaKo092j5awVZipkHefbmoDrI0g470lYastxseJT5EF1D7nPMLa2
	 lbF7agTfJqn9V287VWfU+mey9kddYeVswP6+2mNNvx8wDEmq+2NKobI+WhqLCLflQe
	 V6qaCVpC2Uhu8U1XpZf5UWAeXZ/k01hORGK9aCzVCG9m6SngPXOcji2pRha3K+D0Ec
	 ll9bc1j1siOKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67495C4708C
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 01:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167029085441.26954.12951395229053972336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c2cda63a21a3a236af4260ce966c09c1deb4b0b38a297f8376ec0880e4093d2
Date: Tue, 06 Dec 2022 01:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670290854
