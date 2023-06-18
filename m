Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA85D64A
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 01:00:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D287BC433C0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 01:00:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687050008;
	bh=24X2b+GMIu3hxpW0zscog/5qHL4BodpR7ZWWi+oRRyA=;
	h=To:Subject:From:Date:From;
	b=QaWDu643gapJa2DX/spopzyTYbYrLYQC/UT7uOF1IuVjkk4AquD82tP4DtcDAWLFT
	 09HuXU7Oe18Lepm3MssEru/ae4+tqb8pAELsjdA7XUh0sTtj2hud3H2dhUxTFKl4cV
	 JGIQO1a3EV2wwTXQRByPW1Rm8mUn3FkZbrk1CiqvXMtU/KB6HgKYlJFrMntzV1G/xk
	 EqKiAy381Zp4D/8O2uNHPjdrLtaB6FpKzKkaObWQ20/ZpflmJBhCL42w7QX+akVRbU
	 YnHv7dvJQlZuCNkzydzZRGVnD6OHjp+fq1p6hUaDh+EiOvLBbyzCUh5Z64bHaaKJRB
	 qH4s4oSbfclGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B05B1EB64D9
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 01:00:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168705000869.3767.8857338394581602086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8b1794cd8bc3ac2a0d64ee0bb9239bc0f9dc9f26f4cceb876e2095df3180655
Date: Sun, 18 Jun 2023 01:00:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687050008
