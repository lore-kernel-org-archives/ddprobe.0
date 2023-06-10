Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85F861878
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 03:58:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0FF14C433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 03:58:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686369486;
	bh=Q/y1Ba/2F/cWesn/RM9HFDg9w4tADg6bJfXUrJoqE1M=;
	h=To:Subject:From:Date:From;
	b=BxdMN/CeG4YsRGENTaPLIN8OJLr/77PisQIQ7uJYe63xnzGcQSTM0t8BpYh6eI2K3
	 HXfJlc90WKCBOewVs7XBk/KHV8JVSnDK6aIf35OR9v7Ipo7H+LlNOI1nwOtkpC6SaM
	 eqSiYjYQn9jZOGwSqwlcCi20I1okcuzOA9mWCr5jknM30yjeRYhQAstQDWENMB0R93
	 RkdHiTZvJaEq+gWCMAAOZdqqNGYkYHbOPPvT+5SgTyLyMWSV2bZiJdnK2vH1wzNq8i
	 r7z2OugylQvmQkh9qxdR5DhwviOmJ0Ah6n1HXR9B/oQo+wzP4/W0R8qzxMU7TweUmK
	 1Kloc/uRRYjdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E1A71C77B7A
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 03:58:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168636948591.4796.4145320611358593849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52f0940c971271c02ddd4b98a56f0db06eab3ff146d00e05573983706603c9f8
Date: Sat, 10 Jun 2023 03:58:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686369485
