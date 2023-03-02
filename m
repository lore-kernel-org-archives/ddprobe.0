Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 329C210FA
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 04:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE56DC433D2
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 04:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677730565;
	bh=hHS94WQowng+Q7DjqR6vwkREH/0y1dCrj46xjgecrr8=;
	h=To:Subject:From:Date:From;
	b=PPDuIR1Wr9CFv4qaHDlFlZkO7WhIAk1g7jMWEiBIBoK+TVKFsLDOmT6iR9i48oXgL
	 4X86Bpotqa167SHhs/kYW++Oo6VyFQg2Yv5YYq0Xgs88BLFPnTWRww9GBLytHXAwRN
	 yx29mAe9J+teIKTqv+ihOyqJGuEE/AastsUG7lVvqtQn5FXxb+1ssqQUdtR3v4zc5B
	 +O7IRQ1igtYJIQ6K7EHxngnXG6ZNEej3oTphHEZBSeDGAcfSyljIUV9EHQIu4/fEhK
	 2IeE9LIwpXlJHpMmqFd1fpjyCGoL2AAnexQ+ZX5X66h9uM0pgZKaT7R5D/klN+XKSa
	 7CQBo1Se8XCcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B792DC6FA8E
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 04:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167773056574.21606.7945722253189306657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cb841ae00a0f8f2ac745ccdd25e88ed0624eb28b0d033522e6bb9a80b5c2e80
Date: Thu, 02 Mar 2023 04:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677730565
