Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7F8C7E0
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 01:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7232EC433C1
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 01:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669772454;
	bh=RsoHrOLaYGYbzxUJXrAXztzJXIX9ZqSBlKo4nFYjSfY=;
	h=To:Subject:From:Date:From;
	b=py9lC1NT9T9waUF97PoDoTSnqtWOIA6cDlLh7z/rK1tQoOVjI+Azqi6gzRvCc1iBC
	 hEAVfKTHHrm4oMGwPrB8DQ9NkLFnWNVSQ7BEazqTtFb8ETSJo1nrTOHGlo8O84Se9K
	 HZbpwbeq8fv6W1LbEbFS+mVVLYq1GJPJQIKM2a5znNKleEJKC2AFr57vBKA82xGej5
	 hX4/wFmb0gFDI6NJ4avcI284AK7yWDrarGz4me8TEzRtPJtz5V4r3qpcpTdtHLTn87
	 oG3BQzYi5mhNVkzoOJzR9C1Vq63FPjcyDp0e+/GYwmO19/Vf+2pk+JdM8Y3jzAf4IG
	 6yZnP6iEav0Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51510C4167B
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 01:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166977245432.8397.16338124537105803594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 245e0f3c2e36cc563ff4e8c5e84155b1d9d199f8ce0e2193df9f84a785d47fa4
Date: Wed, 30 Nov 2022 01:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669772454
