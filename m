Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E55257EA
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 09:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 980CDC433EF
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 09:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672823487;
	bh=U5U6Rk2hcxXrEJURwrXj+3atG6I6wFrlTLpsPmoOCgc=;
	h=To:Subject:From:Date:From;
	b=PHaxdqudG+AOPekC7GHgVF4thkxq1/5I5xkGLPe4z9nebykIT3QmeBuGnHos/9ERr
	 8oU/kUMk0NIoNvhxrstQAwpaufJP03drUhk+XmYBw5LfhomTPpvRZA2244fchYnqgj
	 MxmCBKb9gcea7D8tKYDhMXTakT+WhEdG/vHOtdkpdzucOdWzCC1wuLialIKBdT0rTL
	 rF+/yJ7wC1JpEaVZ5lW+OSiUEhO99nqMqrFcq+qjjEA/ehy0cjR2q3OXc+TjbMJvE5
	 ffVOWWDjPjoPB1YtSiZ3KB0qqjvW65/E6JksNK3Z4lIxvr7sv2SKFU6c1wgMalODwW
	 HsjfODxwwdP8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 783EAC4332F
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 09:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167282348747.22197.17370269409826222437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 076168f9a95fd47eb4bff2b0abd694aefcdfc0ece1ea5759d041d44d7172b5e3
Date: Wed, 04 Jan 2023 09:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672823487
