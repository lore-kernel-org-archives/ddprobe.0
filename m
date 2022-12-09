Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC8583214
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 20:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DFB2C433EF
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 20:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670617887;
	bh=Wdw20KGeML5E1WO3S4856PbicLzsxRb+yUNCBuuVA0w=;
	h=To:Subject:From:Date:From;
	b=NNdBX1Wqp5PFHnOSEr5XyKfGqkUStObfKGD9mvDx2jBtnsVIsYwGWsG+NV5iH1R39
	 a4IWN3ln9mWdI1kguGovfo91VBoKlMVfukQn8Vy/puMrYdSkyDdwcvwfdS4U7dKg3r
	 O97ldhwgI95/V8iWK5y3Wc/ji2VPS+iE9bgv85Fq51LmhAmt+VkO+Y7Q5YBhfJgDnf
	 EfuO8W5vqyDibjjrATgg2UJ2ZRLySxezxSAN/2jnd71905XVZuFJdhNFOvkf4zKtbk
	 yPpxyEhiBtrDm9WXA+0HP6RLhQBjpdNkTMtrNFggpcjjxh4RqxeTjPJ2NicLhvzs8g
	 pRSYmBKvi4CiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63DF5C4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 20:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167061788738.2485.1715358084034967989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52d58dec74e3bf264f924e0ede1ca574a0564e23b09381a1dc4af1614d833a56
Date: Fri, 09 Dec 2022 20:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670617887
