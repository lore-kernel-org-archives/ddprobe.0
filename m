Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBD42163
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 18:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74705C433C1
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 18:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667068854;
	bh=3WFUW1wXlZ62ibqvXaW1hXBF8/xLjZW7l8SLqGcgf9Y=;
	h=To:Subject:From:Date:From;
	b=VaIfPtLEkshucDFVLlQaa4jf2bdk7To/rIA6jvYCs9A8VYvxw3AzmgfZjHtL8+YaP
	 RTHylCVUOzHQUs/1KykstC4ZQHWTKCpTPDw68iSDlB3JzmcLY1n7M2e2bgV1cext3Z
	 +mX9ELhM+jRhOQfK81X1ix/dgV9yIhKHfNmDN5vvoVCYcTVXfddpiOCjDwTYe5nidC
	 F0bULfBL2EPIqWxpssfQc4lalJyF6ndzNq15JuX6E6sMvyqqu7qBi2hMk2aUedVoC1
	 l0xAEJaWNXl/GH4nyih/sarFcK0i7jlovM7Z02N7tTTvR46pIrhuLCT+mbpkw2vMmM
	 VAZkSDm9/PyOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 569FDC433FE
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 18:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166706885433.21858.13927170636416312833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2132ab12bef7c9f372133a15b30cc52d77d8393eb3cb43b2b1398ff4fc4ad771
Date: Sat, 29 Oct 2022 18:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667068854
