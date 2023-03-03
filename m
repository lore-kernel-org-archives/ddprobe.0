Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FDCD7E0
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 00:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3F2DC433D2
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 00:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677802565;
	bh=dYC0JP1xNa1IbbN1M/xO8jRXh+34dsUxyvf15sNQLb0=;
	h=To:Subject:From:Date:From;
	b=JUBNUxaFnuJA7adCIbn42dAXjV+NXsm9eiLNIJIg0jYzy9r4yod+Awvr3pvxj/zGL
	 9Nor+IfmkJw3Nc+N9mdWwkrJdoCK0gx3D0gNhIwzlff/3aRRUmuBMToBl1gWQkIFNq
	 n5+ZbsuGkjkBErwTAtDsfQfIwoE5NkJmUtp4DfNmv00AnkfFz29uYmZqFBGXkdDBRz
	 t1F5/T0kDKBOC37aJIyLHBBlsCKLGElM8xq9JGCI0FqyN0bJrjoRKKujqluH6SwPTT
	 RlPpzva12tT/rsA1MwnF3y/oUz7fSlBd2A2k9e7nfyO+muEkiQ7ieSD0M9oLFfpgHY
	 2CAQGtg0/M1OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8575C6FA8E
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 00:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167780256574.7552.816650616961802035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a18bc23cbe76ba1665789dc809c876f53ba4dea32c4dbcbebca4a980dcd2083c
Date: Fri, 03 Mar 2023 00:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677802565
