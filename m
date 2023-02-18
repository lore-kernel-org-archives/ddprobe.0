Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C9E5642
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 21:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 07177C433D2
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 21:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676756166;
	bh=/2dghZyJF/AOLLi6udwBD1UP+kTaw0C8+dGei6Mw588=;
	h=To:Subject:From:Date:From;
	b=m1/ptdgCGv+UnzfSqhYZH7QghNqOYq3ILouTvGQVOJN6rr0dWf5D3M652s6b+PHR4
	 mxLHeEhE33MhNPa659wQNCeGEGU7nV68jVtNsQ75sZmElVLt0KF1QzxNAZxPZI5Xns
	 MIOxWuFwn/eaLRk53+IpG3v8KtrqqRkBkrJF1Es8qsMW9EeEYz36qDzsM0+ReLJCJT
	 wiMryRVKKp53ambVX89gYS0dhKAJ4AsdhsfJvHNnMIYGBCHnKjN3SCi3z79nepMpGn
	 U69e9JTuCh6ZEoID0gTT7ri8E5g4iD07bxkCkxD/xByTeyzQzIsTraFnXLAGjxT79V
	 Hqm7zqRxjoHxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6F51C636CC
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 21:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167675616576.30672.11114904769267675384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb67d98c7cb9de5780878629504c61491e14b1b448a83d88287ab821fb00e8d1
Date: Sat, 18 Feb 2023 21:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676756165
