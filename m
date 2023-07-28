Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68CF017EC
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 04:02:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D375DC433C7
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 04:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690516928;
	bh=AL+IJwMcVQ8tK3sOx4nWGCUYqquZWwr8olYijKJL9k8=;
	h=To:Subject:From:Date:From;
	b=iYlt3XOalugEoS04OjikkoJ6S5vgo/I2nRbLsWnefU3NUplTia+Ox5tebT62MzKcb
	 fEizysL2UIEFIy/b02ITqD7q8YVoyEghBCyGMXrYU0n3C5qe7HWZ1irzeG/Pws6vL9
	 wEa/0bHf/qBxcMe8QJRyW1DRIQ2/aTHTIHLpcpR29RousSyTNSiSs8Mo3ACZUIJyNc
	 qqPqNQ42fXOa5YFDk/HZf5ljW43p89PNHF/9rkoqdQYozIzoXqI+xOz5NQbmJnlAoU
	 PzlkZyanwLj9yp7Yes5wT22P2Z6t6WxkLj9B20mvJt5gEpPEKIj0x/1YCRgbCbBj1B
	 H7AzH1CbON80g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3F21C001DF
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 04:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169051692872.5523.2371288750445269290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0276ccfbaec445637d6e6173d3430aa76bccb7343c63ba0cd85a4b2805f4f5a2
Date: Fri, 28 Jul 2023 04:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690516928
