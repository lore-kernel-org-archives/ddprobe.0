Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D9037F5
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 03:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFC24C433C8
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 03:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691638388;
	bh=P7MynBc8wUtIpPWBEF4Ryd7pL2xIyXXMoUG3tcPPeBo=;
	h=To:Subject:From:Date:From;
	b=r7GUWtTa4UuhXbeT1UU+5ukUubh9JP7FIlzBOE3RglhiHaGlqmRZaigMJ8WnGVluu
	 o5nCxZ3MS8W1SV8D9u9ljYZLohrLIxAWZZ4vTULV3KyadWx169lVIoo8FVJNYSpuSx
	 NdQMvkaC/1hOd2UXuDKvWjxmgDgHJ6rA49RonY/YtZFb/joDuaudGN86YK+XClPgNf
	 Vj3N1M4NGe5CHey74vAyPz2xPZDT70TomZksvhA3tBX9D2tlyBUr9omrx/Ie1dXxXa
	 2y/8z4j4wpFtUexMHmD03lWNjjGgcEMqtYMUUkwomc/8KKGFfhYCeQHipOXT3/rfvU
	 ChfE/mh9BSFzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB316EB64DD
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 03:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169163838873.2137.15981287459446996422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 918d3381ee849b7c12fb430d5b68be618c69d86442ea30047fa8544a8e73105b
Date: Thu, 10 Aug 2023 03:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691638388
