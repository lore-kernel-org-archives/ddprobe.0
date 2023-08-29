Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E5421429B
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 08:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFCA2C433C8
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 08:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693296848;
	bh=S4PM5R1RwupLld9ARlt8S10AnM1/IGQ8jH29t7rLNtg=;
	h=To:Subject:From:Date:From;
	b=Tq13yF7w7qUUw/zEDjNgEpkNlIuqDF4bk5DoNE29yNSyniGktf/YCMPYw+sWb68UT
	 RHHGDWWJzrXVHHNeLs2iAavDYWM4TlgZjHCeNNtmxyI/1PkvsOrehbc0gCGJbBVRBe
	 tgexM1oeGlSvSKlyWRaiBoc1ZtY3qqukOY8/vWQFpwHL0EL9GtfIAyOmG8xrnLSU0a
	 mphTj9nwIqa2TNSkN+uyHl83EhB2bAocpzHZ2KP/Z8huD6kelIpBWScYRw5mgNsslM
	 wE2Fso0+of+Qwk0K6qkhtazo1IW1qk+RSaaeRlY7esamm7XEBHII/QtEu8P78K34YY
	 JdNoVYmBSllwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1AAAC83F14
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 08:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169329684871.11417.8489793395411376669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7554e3adf542dbd43ad392cb7303fe57648ecde19544cefa1c4f3e171d717d2
Date: Tue, 29 Aug 2023 08:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693296848
