Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C24382117
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 09:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7042DC433D6
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 09:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664097053;
	bh=QVJXCXz5jElC7MFLjgtLH6YmKb+4vK/mHdPNgdCIwgk=;
	h=To:Subject:From:Date:From;
	b=iXJwEflqPeI5b0jtVvJDInYtrLbB3PLjyTUDM3hyBc9YdOxci9hVDQT7/Vp/Q7PX8
	 6Jq287d7MiVVEy95apTSN6ZV4dcRxvq7yJ3QYAnvVP/a8fiod5G1JWsSfQ4qgoraPK
	 uQYRp5LuFzDt9jMsG3qkFBU9ZoRSBnDeDDyRwOH9CVt4kY2vEjReqVgInkAW1UoJnR
	 V6yGx28T3GwXwlJCMcLH/2CJjyL0qfUjibnhwN2oQCqL78quvV+l2Gr6Qacbqs+etF
	 dxted5sz7RdGed0KfEOH9bTw/k85D32B5Sf4PhBDOWuqIYEc1j/00JqxTgnqUnNZn7
	 z/fGMK7htPInQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54B0BC04A95
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 09:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166409705333.9981.10007473024560034515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e1f270e8f975c9bd658809b96f2e7ee426c68cbef3ac8a59f292a7dd19a917e
Date: Sun, 25 Sep 2022 09:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664097053
