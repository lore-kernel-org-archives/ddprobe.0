Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D95A010E6
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 02:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DD4DC433EF
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 02:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671501687;
	bh=vvDQZGGTOX4Kypxa2slnrOBoo/6jMkNlmyrpGfOfcvU=;
	h=To:Subject:From:Date:From;
	b=J4yDAYaL+6t8PbM7HMgVD/EMWqQTRYKY8MC/tRfBk/lsllSrT8vVjR7K+pB2xTK0q
	 tFUOjFe55sQMyh+04Nek2YsyylEuk9CEUNSWi0ug8eOtdCbhAuUqBhKQBaV8uBOBfq
	 uG3jpi9d9exKS8tHSZZeSu3zH/tYCmDGt98yC41gaR3k4uKOJPy3hcNAXC+ro21NPU
	 eeWljnwvIXftj6USGZ5TjpGbSi6XgBhBaWdixvBSdlYHsC7HzDVPTgrMeuq7c5Iypb
	 qfLBZ1wacv1eKbXf70WY51UfBKU2FjySWZ3sf8/ZZ7fV7rPgEm1eFVyuI1Xhu4eqVc
	 qANUw9Z96bAxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65308C4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 02:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167150168740.7661.11602336336886215016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f94de781cbbede76a6814badb6862362d66e5aba9bf9051ccc699e06d9ed5688
Date: Tue, 20 Dec 2022 02:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671501687
