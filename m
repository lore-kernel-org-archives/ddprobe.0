Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C35BA2580
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 13:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 748D4C433C1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 13:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661950853;
	bh=GZphSbZxdrVXRPyEBBttru1bY3e1du8aYKo/GUBYsq4=;
	h=To:Subject:From:Date:From;
	b=hdj6fLIE5+ZN29JJjisGSAl3m4QaOCNhWKGMYTPkhoh6I2nAOwPOUCLeodaaMI+yG
	 QZAxY7j1NOIuf1VRTdxiFY8u/aEVvHjEQvRUSTDg9FkAv3esi3jT9J+OZvnZzYlxb5
	 Uf5gmS1JXvAXgEz+QEmtn5+Ik3Gx1J6wdVIixRCnJJ5wfBAGScLYK2tEPJasNYhKD5
	 RgVKoda1u1Ql6ZLridBKtXyd2Hsf/OYvtZ8m0o0YNnGdL7iVkXyes4W4gCfuWcZUd3
	 AuzUg/RHrQN1qnDZysUJotDNtUXrY60gdedVwZjG1PDr/R0qqo7u8eXddjZtWbOaGl
	 kVLnOJ415lgpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5420EECAAD4
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 13:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166195085333.28340.9829324488204149182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a92c79b121f9dfd2c41731696ef95ec155ce204b2838d991f0d534d05be10c4a
Date: Wed, 31 Aug 2022 13:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661950853
