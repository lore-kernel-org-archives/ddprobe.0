Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C29D648
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 05:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F3403C433D2
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 05:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680587226;
	bh=fE99Sx4lNKH4jmdRm075HzbINN4e8XcUb/kJQp4D+ok=;
	h=To:Subject:From:Date:From;
	b=eDUmKOYUnMuFrAeqI5iR/OiEIF8XKeVq0bkxOq2KU5h7dmxfwiqiGw86FxkfBk4sA
	 pD4iW+Gap0WnOuvgGX8BsJXRfxOFymZhDH7o8z34lZXwIRO0/+21ZHO+83M+sNRbWK
	 ZbTEXJQJvYyS1pl/Ft23yGTejEImYw5hknMTnZgdma67/wRe8LnEFHJBHCzLYGQhnf
	 xy1u3M1qnwS9mq+DAxyVUXmN5X3dWmTLYp3RsVtMoJEFFaaB/TLfJprjPzlbuVsEPo
	 nTa9jSTLV9mUks6Ma6PPI5C3DXqMWbcevM8pxMcTMeEKl3ZR1XDsaECLLzQpeMIqvQ
	 IaMOHMOba3/Iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBF7DC6FD1D
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 05:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168058722575.10909.15025103206950881718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 139869d41a16983202281d241e8b94bf12fbc451a29d2c030ea8c7e0619290bc
Date: Tue, 04 Apr 2023 05:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680587225
