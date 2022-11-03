Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEDE479C1
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 21:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A46EC433D6
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 21:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667510454;
	bh=MjuGG4Vt+s+rQxdQbEkVMDYST/IIGfV+q1q0A1+jhsM=;
	h=To:Subject:From:Date:From;
	b=b+BB1yXnvek4oTvNM7u4vGPyEr2crRU+QnnFYWrviYSbZIvsTEt71s56OVdAEHiWj
	 YRB7dZIvIKrOoJSmJDDvOsOvofjqfw/mS0uM/aGOuWouTTPKl3FZWO4+HWuIyjZFM2
	 jSRseMxbdVm4Sq0ZRs9EbnT+3GbXJT4tO3tJCTxWgA5Tl28JgAT4krylrDyoX12opU
	 Bj8EUyt6PUj7+PxXu4FiTD4SRNI6XabUtg7EyyU6rgAV5WT6HLqRxUbnJqiJC7fg0s
	 XRUEF9Zb2t0n0kC8S8yWkJgQNl30/CBJMsQJnCn3ZGaWLYEmsZKaaHPgJYebOA859z
	 rByK6sZ6KGKxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D0A7C433FE
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 21:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166751045435.17029.6721912377105799284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 124374c8bea767b6339a7d93f9503d1e865a49393051ab9b3aee9e071d11ff60
Date: Thu, 03 Nov 2022 21:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667510454
