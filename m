Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3669117F3
	for <ddprobe@lists.linux.dev>; Fri, 26 May 2023 03:25:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1D53C433D2
	for <ddprobe@lists.linux.dev>; Fri, 26 May 2023 03:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685071505;
	bh=45WH5Gjq00GLuQfNWrpJXHGlwkjz4EmPUGIQs4P1K9I=;
	h=To:Subject:From:Date:From;
	b=LXb9iKWgr4/IkL0UI/Z0iU8jUUKzqiGxH7zti3ErPRBU/tD2boPYtaLc01P056kT2
	 rN1M+j9ef3K3Qv75a21+1yaHwk8Iz5I/s+MCKRKfEnCLca1dK9i2W0QraSMBWMyNXH
	 qeCWDRaOEE6UbaQRiOZyQEf8ZunXk27vfrb6UNAm5a78CHrkkKS85QqtreAed2ANBX
	 EbZXD0i2NdUEdolnWnCsjAdMcaNm0mWXWTOLOPiDwHu5gMCgvHSi/1gu2q5DP90wl5
	 WvhjAmsMlPIDlVG942bbgC3Ibbg4TNktMcZBY5jT+vGz0tEvgSOiMXXsFrfrjgMQUf
	 ZgVb+3VYpLdqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B86DDC77B7A
	for <ddprobe@lists.linux.dev>; Fri, 26 May 2023 03:25:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168507150574.13315.9359800236607712603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57d44df8bab90a6c1dd3e9885139f1ef0f142e0369178814eb9ac2bba4355f42
Date: Fri, 26 May 2023 03:25:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685071505
