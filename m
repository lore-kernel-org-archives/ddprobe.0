Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52F7E10E4
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 03:53:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6B85C433C8
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 03:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691725988;
	bh=3cnUk0xBNFif8Khd2gPsUk8gDfnFMAvxRWaAjbV08iY=;
	h=To:Subject:From:Date:From;
	b=Zlo6qr3T+MgA7XJHLtjWHvmOg5HE7JVSwO3nFcY9cjGcp6T39Zf8EvZyTmLPZFBAG
	 iiqk2hT+GOWe9wPbupF7/nK3As1RIjQoSglU0Qbi8NUN/RpuzsybqlxNSvTSakZ6RA
	 MIjao1lOHLKk8GNJK6GGPy8KL/We4EDqzpfXmAWUo2q7DqLM5UzC0cBrBW/ypZdMBS
	 Jy5IPQSBEJuy15NLCyZSrZHv4LPm3X3rScWamZ5zlMYf8Ya8Bt34VwzLRi44T5rSiP
	 ofTkQ8lCR9wrtI3zyOwl0QqLXD3+kOsMrNpU+EjybL3Vty1aWMDC13Zak5KIjje8xd
	 5/ZYMzytgBojA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96DDEB64DD
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 03:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169172598868.12344.6301398265738363834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dafd0bfe6e9372407807883fba731d5e5f96f25e64cd45adaa7897e6dbddfc2
Date: Fri, 11 Aug 2023 03:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691725988
