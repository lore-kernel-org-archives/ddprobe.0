Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5121736D
	for <ddprobe@lists.linux.dev>; Wed,  8 Mar 2023 23:41:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC59BC433EF
	for <ddprobe@lists.linux.dev>; Wed,  8 Mar 2023 23:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678318866;
	bh=zV7DsdHgIXXEBy+WQ6nASz/QJbM5Ewl5AgPlMQYu4NA=;
	h=To:Subject:From:Date:From;
	b=HMF/908NKv67LZwIEIuvUYHNgLpVT4VJkStZvcQh2M6CfAQk+rn5nS3qp5B/dJlhr
	 g9exDBMSSAfVJEgoKI5weWspo+7VT5E/xQeo/Zjo1RQ3iUwjaCQTSCbVlpcDtlMbTy
	 uH01RO40yw2Laes//RBGO3V4K76SzAz3Wk1/cAlTUmoX52wptrW5vk/OkWgdViYU0T
	 07pJnMWqIY9UBlROXBZPYEJDwopD0QIv26l23AOZk+/bfF8byJ6DMTR7OiCLaHWuCN
	 dKhwTsDg4wpdhxHvB0DHGSHthpL0EqNLaR1OXX61W/fmh6F7uL0TUDl+cWHvlD4u3c
	 4K/r0crtUwbVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4B62C64EC4
	for <ddprobe@lists.linux.dev>; Wed,  8 Mar 2023 23:41:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167831886579.618.17983288974617801591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4728f678e037da5e950fafdd0a45f4ce54782898bdfe87083545c05ec3cf5895
Date: Wed, 08 Mar 2023 23:41:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678318865
