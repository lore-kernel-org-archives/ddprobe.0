Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B79157F
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 18:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D22CC433B5
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 18:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662922253;
	bh=DgxTqTcf69CzecgHR2FmkXAQBzS1wM9lmpOugUDo23s=;
	h=To:Subject:From:Date:From;
	b=RPz6nOfZeHbxl3nZGPHEp6sgvcnTLRQDQnexEBUjprXtk6hBWdB/ARJLPNgIhlD/D
	 QlVBBVh0HJqGVdhT1hG6W42+V56U3LmFRQBeaIwZZg/gsp8+71O+2RLR7GBVfOeTwP
	 XHxHWjldImN45U/CYWlRAs8SQM4jHjmld9DCTxPEPHTs4nrM6fovGrAoVT7+nlIVf1
	 WxSm/0PqsVSj9mDbVp5Bd/ygl9IopvLxTVv0ER/dGF7Inbc7vKLGuelq7szzaIIj8D
	 3CY3ba4F6QEzeieEZcSvHMtM2hIosSolFYs3rBqfjuxq0bJrIq0wKIfjZ8JHOb7C4h
	 R90B8hgeyR4NQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50CDFECAAD3
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 18:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166292225331.30215.11741336677412121319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 161441734086bc421193cd300bec99d60dce3a5c7fd67bb80874dc94d1d48f03
Date: Sun, 11 Sep 2022 18:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662922253
