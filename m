Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFB2D369
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 10:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B1CDC433D6
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 10:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668162654;
	bh=mPrsJKDHCq19/jY3hZM7BjEiIa/kVqxsSj527xUS2NQ=;
	h=To:Subject:From:Date:From;
	b=coKmKqxqxpN4Es3KJeZwj8z6I2SGdFR4P2zjXs1mTkilNFoaorc0ajJiIa5sveZ2J
	 xTQmuoTMNl39FFbxYjybVbrgT8I4j5Ljn6K/N146eFnTkHg2KtKjRsa3eqGRI6ze/e
	 Phk2Mswjp7voCXGQPSM+FzyXwod8LisA6LANmtbozY1H9AqLGNU6q9/ugAFvGa1CPD
	 N68VmfWokkS9mcU2E6OuZpb43bxo00UsCMl6Tu+qcwhbyNwyHGFjYx+OKgguzN068H
	 qDzYQiGcfPgmgsUpJZ3DiO6ir5zQKUmJsMOb+4ehS5blzys/ZSeFVE3kT47RY5N+yV
	 IFI9yllUSmQBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54BE2C4332F
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 10:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166816265433.28272.15682510767419332174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34440e558e5104b999339cada861cbe0d5f44f5cf5e8b5575d1b6a0b2315f6e7
Date: Fri, 11 Nov 2022 10:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668162654
