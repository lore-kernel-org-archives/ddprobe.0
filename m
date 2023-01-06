Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB7D52586
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 13:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 879CFC433EF
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 13:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673011887;
	bh=LPPXo/7AB31IXwElmaNfRV8Ab9z05/g19/qLGWaWZFo=;
	h=To:Subject:From:Date:From;
	b=df7XPWlb1O35m5pmBUyEYMncSTrqjtrGiNsklS3lPz/KE+Ki0fS/sy67t0j192ioY
	 NP6CRrev12YtwfopEJFWb5M7Cfv/jwcI/nsLPm8p0K7qjNYtoXz4DukdodQk/cpB36
	 vgd16M6awZJ53XgB/bj+1Y5JVhPrAUw6JIksQXr7MMI8dqpwgVdiMSWagpmTao9pP2
	 zs0KkiQAg7fqAKb390OcInqOuAwisoWUoI1GTSLZ0sJU3B6fS9TCGy5X1/hec6ps0s
	 yO4VPslXYB6KiQZ2U/NiXLkeZG0GCIcseYUCNyNTNXzo3HbOjaIFvMBPu3VJK56/Wh
	 /2PM9LNK71bwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F02AC3DA7A
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 13:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167301188743.17857.8831396911879121086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 545c09387237af587b1adcee2faab61cbf6fd6e1079fc83a54ad587e8e4a9502
Date: Fri, 06 Jan 2023 13:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673011887
