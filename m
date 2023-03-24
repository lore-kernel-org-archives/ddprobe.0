Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BE8C3C24
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 09:11:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4527C433EF
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 09:11:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679649065;
	bh=+1H2xt+ahgbW3nsOkTuSp9xtkJ1RC/19w2VEgvIE9XM=;
	h=To:Subject:From:Date:From;
	b=bjlFON4NMT+xKnIZg3Zz47zmiH24IOx7cgGUsoZig5aeOh0I+MdJof/aIKfa9LfLo
	 ejlDPMEWa0f6ZEHiuyQwBRssTJy+abT3qeaCWJPsGQV40701rLa9f/dxUK/B7SYmij
	 g5Iad9VfqQIgF9rbwRs9UpoS5g6A6JOqHPp2D+AVXHvOgt0qokzuhxaf5Ma7ZI3vNk
	 +LCzqRiJ2IV9Kam85Ako+OO9ZyA62YEjgAkovnQb4fh6z6aUVpHXeQtXn1YRKmJl+Y
	 IseeqZIRSGlpuad1EolydjJriJAkY6Gn2P7cFLprNmgP8bthQuZPbkSOlp4N5r1sK3
	 tHGq9bfiqyLFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA95AC6FD20
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 09:11:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167964906575.2091.11559526532292880110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f348e8c60056afa349754b8d205b23d96a75d8dd2b8404a7a74d58bd2d1db76e
Date: Fri, 24 Mar 2023 09:11:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679649065
