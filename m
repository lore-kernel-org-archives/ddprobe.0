Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 319146FA1
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 17:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4B87C4339B
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 17:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674667385;
	bh=jrykc7GRUcjkz9cIMiYZqsVFBlTq70vevHAQmiEVbRc=;
	h=To:Subject:From:Date:From;
	b=Qzr2peFtnSQrfs3S7hwt7ltJOpe7PTW6rb9X0cCUrMhhMEeRl8YuljoThHZL1T9tl
	 wk5YGkcdLTvdv8UAzWty0ijJN5SvOjnt12NmlxO13eJDZLzot+bKI/ZASKHtW/lvKX
	 unc955vrkotlCchm8A93Av7YLnQMU1TtVxANUuN4j6k+rz0LD2N7IQUu/EvLXXS5Xf
	 0weM6VoE+Yj3GEaAH4xzy10ouZHxk0p8tVey77m0fAtw7PFabsSihn8hSqsSKdmDwn
	 dnj2incJQp6vU24oizSK5O5KFL8epax5so6c8C+yktDBf3QEBXFYs1ziMYKZEDzUaV
	 FVjNFg/tM1jCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B937DC27C76
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 17:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167466738575.31800.5843346285592891996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ee21dc2a3cc28195a233aac1ff7f97374f05d41bba34e44dca9cd5a44adf527
Date: Wed, 25 Jan 2023 17:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674667385
