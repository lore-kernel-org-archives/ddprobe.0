Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA0A98498
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 23:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73253C433C1
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 23:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668469854;
	bh=RxjDrCF8MKv4WaK/QkvKeq2jVa+DFO7P+Gxv9l5l/BQ=;
	h=To:Subject:From:Date:From;
	b=nuHAdCVAgsjj581tae/wIpfLaST6hOmLtq0+FKdBpDMCrFmvNP5fYPjCftD79dWW2
	 5VglGpHESJwmNhjBYGCzmwYI7bZv2Wr5wLz7jb6WWMMQT3fPaidouBxSWPOQpe2yjk
	 E0dpBStTE+YvM+eWzKqYXPZW/mHFlyKPqwYWBu1XWz0mgx5IlC7DZn/ZLmn/E9aO89
	 zDZkBMV8Gx/a87hHuRB4wflNUdaQLL2LOie1ZVDQmnZGed2j40MnRNE1qY3Bvaeaf/
	 FwkGK3uJezE/jVO1Ignuq2sPf9u5O6nDE1YjoPVCO34zwhP549rg+crgnX7vNCv4+7
	 P5Zr71pY39cUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 594F0C4332F
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 23:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166846985434.30027.11361666185970502385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19eabf2d8d2bc74d35fa301c4f8bc0ce7d9085f01237d85fa91f02f1fa68edaa
Date: Mon, 14 Nov 2022 23:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668469854
