Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B58B0D51B
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 18:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 653EEC433D6
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 18:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668622854;
	bh=BgnhlcZdxZ+6VS5fNsKIINCHig5UrN/BOjUtfHHD3Mo=;
	h=To:Subject:From:Date:From;
	b=PI5IjqB0E2xqkJy6kMiJKwufQVjtZdmrPNlPhgiTVEqd+WsWtOGn4MzSB45HKIril
	 mwW9n4miRuaukTgk6LS/ef/VuV3MAwTMPp9xsm7ZS8dgvpvQYPyl7vkOpN2WIFlnI/
	 TL6na8YBly+fhpt16bFQ2P3UZSHHAtQkU4LO1s/UmvEpiwKfogWCV12AXcrN5Nx0Gr
	 ewQfMEIWYRz4uQ2t2Sv8DksptUY7+DXH6zevyCvbEefcEMTkoOB+jcJH/BhDycUy+l
	 /iDud9aqG8Hlpg+NugFTFTpRzaMBmO3eQpBZ3LhmrcEvalr4h1v9n6C65lxTNY+bkM
	 pwJRnpUjiMQIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 500DDC4332F
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 18:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166862285432.2467.8173029350383976862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eca1f57b363487f67d9920cc0b57bea83bc44f0a3887c0bb67355f76cc346e43
Date: Wed, 16 Nov 2022 18:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668622854
