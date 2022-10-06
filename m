Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C495733CF
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 19:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7187FC433D7
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 19:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665083453;
	bh=mPJ0UQA2XvKrzdraaqSBniKmEiLmlGhrt5kqCkpuH2M=;
	h=To:Subject:From:Date:From;
	b=YbsS9qMp2hgj/Ycb4Gh+O2nLaOpzKP5sALJlXxwrUthZgzIbP18IKAryqZYCS7EED
	 aSqVo7ZjeK098EZ4LX4UxOulhBb25OvU8AuNSqjgEmopOr3aJIt8HB1/fCozbPSyKf
	 +qJdganll+p2ZDpVjhQE/UApfhcE7aZRRLtLOiCcCvBHWZzQS8Tc7ZEDHWHAtfg+Jh
	 dNElmEoREylkanEtujoq1toL1vsgznqCuA5I+ZUaMF4c5E/q9Hdlh1M1ZElJ6b6xNs
	 yqeGPtY2A5PU+Hp3NSgQiQxLLhXqAubsOyVk6WKbNYHWxH4l/2Bpkis240BXxwZdRo
	 ymTyGWu8ywZ1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B13DC433FE
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 19:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166508345336.6871.2664842564221730281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c8820c2c19cc53b3e626225196c9907cbf78d370da3cc1acd53e342e8328a34
Date: Thu, 06 Oct 2022 19:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665083453
