Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAA904A02
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 14:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70B47C433C1
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 14:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662732053;
	bh=kYFHZslzNEXTvSSK/5mfBnkEpzWAlA8EzuFoRmOQglI=;
	h=To:Subject:From:Date:From;
	b=CXOc3bH9RDl3NRYBt3azeARX3lmvYLt/7H0tPjBtT4VzcfpQv45z4EWlhwrlL2fYH
	 iySUkppuqmHVDbrgVxPnWKc2wa08fFn27tMAbY4v3RyluUcRLBSulNinAAUrj7tPvS
	 ll/k9TSYnhl6wKDmamqVXz6nzCJyvpXZ67Frd9ciUslzjx7UTScuwLf3Oq/B+MiW5P
	 7N+a+aU8dAy7gOnGWSqDIgNPAU/QVCQw8TclwDgENRJkMkSJLya3e2wKgTIqm+EYZu
	 o/hU6rM4FUcxKm8nSz9mBzE8gltZt7UPRuwAui7LgR/RRx/7Eca8f9mCS3WUr6Veve
	 cybDaq4KNuszg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AE9CECAAA1
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 14:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166273205336.15087.2045700925881290527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35f5bba322d31c161d12bdf85bf94ce267bb9fe3615e4581ba5d04a1475c17d0
Date: Fri, 09 Sep 2022 14:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662732053
