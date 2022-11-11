Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0751F7E
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 00:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D2C4C433C1
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 00:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668125454;
	bh=4ZyLpBkkFUc1QrRvajFGnL/DNN15ZdFfPmGu0pvgoc0=;
	h=To:Subject:From:Date:From;
	b=r2HlgVKA+J9BdntevlhiJEulDJ3C8YRtgKn+omxs5l/9pmRm6SlLFzaYCfZmH3k4J
	 nTRXe8XegXH+/mfx6kRxSIj+/68PYe8qQU4A+TLTXBPD6vfrysYq+aVcv5ZhNAKnPy
	 +aTj4FXuGpzGV/9GlPTnV9RQvjJlh30+HOMp+84t7FdEuLVLvUk8FCUIehLs0uC+SU
	 KPnv3PKd1fYzjGvOgEEUfOvblrVFzA8NQ6fLKG3lSA2aEJBH+kI/OlWf0z3CiUQdcQ
	 s0BcCEr52gwp49oAwmIGH3LNV/S4XJaXfy6Sqz3cMgf96b1r7XZFLHnYXBZM0sww5w
	 AM45J5WjB2ttw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75B08C433FE
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 00:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166812545443.5946.4750950050671517572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47e7ebe85bef7223213780068955c91858979fd84eb0f6d5e8f55460ae97357b
Date: Fri, 11 Nov 2022 00:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668125454
