Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E039538B
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 08:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE3E9C433EF
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 08:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685693225;
	bh=VzxiSJCINyDuDWo2gujDKUr+janmm3U9YB6XvPddDdo=;
	h=To:Subject:From:Date:From;
	b=cXKkcbwpLzg51DfprXGIYTh5WbBqgO3FVbr2qVXHbZu481O/dWHVLVnM+j1OXREtx
	 cvgCoqcPz4n+5pYImAJxKug7bbc11xyZF1CW7Wl6m7bHaKKHg8PEzyIkzZ4kYiDgE3
	 JiTNXlQ1cLMkJ1VvMdVdYuWK8sqyKVD/KFgbl/ayO4wKvYycrzeQd0tuiPMWpPNYhZ
	 fy5NdS4S8LJGxR9VHlqef40NzMCrLMhN3TnBw7q1N4JXHMjVQ3MR3X2RyukrqwjwRO
	 Dr9mGgCgE+v3bEGLnSV9XrWo6vumWeSizQ+xnhArgkmz1kOhLQdcgNkeYMvJnJq/Y3
	 5pqCGzp3tdR+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7269C7EE2A
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 08:07:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168569322574.4850.13037693341969028205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d1eeb3a106051844aaffbe138bb3242aa7b5e6771bbc675ddc0ea7733ed4e9e
Date: Fri, 02 Jun 2023 08:07:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685693225
