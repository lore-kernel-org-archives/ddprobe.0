Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DD431FB8
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 07:58:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D66C1C433EF
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 07:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679385485;
	bh=NvRoq6MwRwZsBNETgcpaPjBBLBy8BRHRv3nswoCaRV0=;
	h=To:Subject:From:Date:From;
	b=F6BaUFzBoyEOqSFd5qDQA6j9gkh9qrTeV5sHpoIj3uARBM4Qm1Z1CHWmsJqG9J1n1
	 R8xLjCGeNVXfdgZ4SOMioGuclqkQbesVqu0cZL1Q8ZQv4H2AoO2Ep2wAlBbyB3VjLI
	 gUXYIGN1fsa4iQxP04Fx+b0GERN4+vUfOpKYLDgPcRtbqkOwWtZf6IJKu+iiIqU0ze
	 MIflQ5tCFbmFS/VUg1DYu3Ayou8lS7+eIy8XTW6RYpueSH0bGeaTmsxBMyy56lqnLe
	 +1IxH2HlJ9KQWh52pzQN2GLqFyqepk0mjTJaLOBdzRbRRfSXOZAqHgymdPxIu+MouX
	 eBauHzV++1cdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF3E3C74A5B
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 07:58:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167938548577.17394.2108756686389474237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e3776472d1b7d1f95ea42f89069197d483f61e5e65c5a6137587e9ebfc34859
Date: Tue, 21 Mar 2023 07:58:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679385485
