Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5502DA2D
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 00:57:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VJXZ8z6m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA629C433C8
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 00:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697417828;
	bh=1J7F7pUa2FVl4vtmz5CMd9TYde4AhcajrLsomCg6ps0=;
	h=To:Subject:From:Date:From;
	b=VJXZ8z6m3BaUnejhGSl8B6xt0yX074Ms97PovywRx1gSC0nUFB6AQa7NryYiOp7uE
	 F7u3sMClzqMkfcvMtUzqdAdR5LsXRmag2rMevC7sCrPlRUOyqBupp4OZajjcCZiRT/
	 kTLLop+Afwdvo4NuHKTKVgn32obOqgZYxKgMXDvv8DLRQoNANpZi9UhyDwhg58hAMB
	 OngffEzlaBpsBT7Br7vPM9I3Zael4/QDA2d6AHCY1M5xWJ3T1RjWTSORUc5d6icDI2
	 w1bgKsJ/Viy0cXSTyF6N6PZBiDSRQXF710DLPCVu7Uxl++tJeNasuCnNvzroA7SKVn
	 IdxBFItWQ3PuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE496CDB482
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 00:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169741782870.11318.745392862309216648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d1ddbc8f6bde2620489c8854d0d361cb8b967cbe43c2cb2e046e4589d7e3ffe
Date: Mon, 16 Oct 2023 00:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697417828
