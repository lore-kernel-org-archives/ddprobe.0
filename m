Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C75C1C01
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 07:44:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6E8AC433C8
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 07:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692949448;
	bh=0/LWRFuPTHvPhjqGwkFWqXbuAjwrI08XIt7H9tL3t7Q=;
	h=To:Subject:From:Date:From;
	b=jBoUyViszsyxcqgItTUMsQHSyv8xruyHfzWH6iNht7RnKytvIEHPPHXu7kWSEaNse
	 VVad+YFSyGF6DbnFxMFGqd2A7fULc1jWbkvgQ0+yG5pk5C39PKVBXhWwhw5+K22ojv
	 egZwtdgYVBLKA/RhOaPvnEQXTMl4ixqBe1pdRUXT+TlmqnUrcKFuTr0gWftMAKVjk7
	 X8cuUgDSZiGSBNNDPUYPhMnVcCA1rrhiblSqeoKJg15A/62wKAV2n35P9BMFkNXQfI
	 Y0EvP+VdSS3YGMTgmfZ+up+qJiCGWtvu+JeHdOoGdKlSE7N0KkZdrYnsHNJZa+Fclb
	 +08xu9Axt4N9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB067C3DA6F
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 07:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169294944869.17624.7790944475445536363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c2a77f5561492ecd9d316d45e9da3166325cb47964f5311016fb8f0e629826f
Date: Fri, 25 Aug 2023 07:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692949448
