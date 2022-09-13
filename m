Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAA8E320D
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 12:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66C38C433C1
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 12:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663071053;
	bh=RIgRPwl30lQg3uBLtN5L1xw4tuDVtosTU8+pfd6dj/Y=;
	h=To:Subject:From:Date:From;
	b=cxJx7KbW6quNyHq2NPPFLLqwPGNkjK844Yn40RSR5BOYb5hxusryBQszz1kDEE7Y5
	 4+hDRng4ashPDfpgrYeW19/py3gARFY50CpY3OZSl37CosGAn3HMPz6nCuHCRLmPF2
	 kZSTjGcTUbqgg+64BhwfnIyklEJDIkIXRgPmalo+hBJMcV9sWPLg7m8hnYBpN095Zz
	 IzevaFAqfOYHLmAGskZKzL1GZV19x9LRTyuaM+ftYsuboggERMyP5IybJWQ5jGnP1H
	 igbjif37HX/PtdMNkb/N9s+CnHYVp6NBHbom/5yplT029zgLv/u5w3ZHa204zCTZ5+
	 aHb7Amn6U35KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51A70C6FA82
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 12:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166307105332.17864.4022004798823245864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d937a5785d905286d1ff67e0da3c9db21027a1f6bb6eb1d345a85f6fd51dc0f0
Date: Tue, 13 Sep 2022 12:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663071053
