Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6881A5A
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 09:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6560CC433D6
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 09:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666690853;
	bh=ktElEJZG5e2nrROa1nZHZoHRMKsOaw3k/mKMExdrBMo=;
	h=To:Subject:From:Date:From;
	b=LcHBoI0pJV0P+f4q68UFPsqyUosjygZqmLOHkcNWWtd8ZVdcdM9U0LBrIpgvqACeb
	 QG6lrnt7y5K+gtIN1ahZuf3qAR3zYhLmlI3f1RMUEYoJrwoyljYB3ILoCAxktbF83O
	 tg/AaALQQH5jgpGu0RBEHh6ONogkAcNNkTmWQ8+PftrAN/uOl0fHNWe3ozr67Npkli
	 8u4vw4y1eGApTJVLeqrKVJm/u0hSgYp+IeKAnbuVIMfVAqaBEjNQNnVSacCw9z4Qcf
	 tQvKU8ptcgL/wSWzalFDRISiDQYLMclTTCTUIY+RbvVGXCjhe09KZwU4FZj2Y4GBAX
	 n9JSBqRtknWYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EFD3C04A95
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 09:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166669085331.25074.7534478714599608450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a385f831db1e30bfe27acf20f309d0c3e9306bcb4bd5b2b8f2fa5a56af4e4de
Date: Tue, 25 Oct 2022 09:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666690853
