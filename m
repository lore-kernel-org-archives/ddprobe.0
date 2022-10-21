Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACC4E7B
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 12:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 678E8C433C1
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 12:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666354853;
	bh=4yoOirzxed3W4AyB8Ua+wGHlgVekDPaota7LYOwq+XE=;
	h=To:Subject:From:Date:From;
	b=FRGF2PN20jcrGcsDl6wPh5jOU4B6CrPG9Mel12xpDBIxuL3pRrj7iRGDt1Vs+gUy9
	 z1ldC90/o+/8kvkeMjxdnhmIPZBb1aEasICdbZn+4pa3hVENccy66yOOR02GsZ8dWQ
	 UfE2ZZW0SbNT9AcQHGsRTDUiWKx33RO/069FTN0R0Zmnar8vHoE2GfvCKPF201MeIl
	 n4W8NX1fKXqMGS2B6JKgcWPNBCrgJtUw4faiakG0fuJc8sgD9TZBM6W47lkStQKLMU
	 mDe+Y5nQmlK1PHWyZIiR9FFkwS6pV7Y70Yre2lupjohwcEvcGPuaWipNEqkrFSng9a
	 ZgguJZ9N4BHDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 501F1C4332F
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 12:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166635485332.9838.13520075127255036585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 095f463fcdb242dc219d874ab29f9e14de62cecfd5c6f5d2429ba1d448d1a07d
Date: Fri, 21 Oct 2022 12:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666354853
