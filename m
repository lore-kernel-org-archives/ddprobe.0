Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 423817B
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 04:35:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE3ACC433EF
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 04:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682397305;
	bh=4W1ph0xsGMDmDPrhZOQXTSM9lS2sJ+KKx3wFoCe9YpE=;
	h=To:Subject:From:Date:From;
	b=ZXSv2qqOQkZc6YHahzdiFI0CxaCcaQjNI/uO5EB3HUHKBUr+ovrZY93ggo00hgtqu
	 0Sizbu9/eqg6JjDqRQ0AH4UuxObOKlCnt4tMKTo/ck0Us0bRtW0z2iV8bXnQCWI838
	 bY108KJdtkoYCZ4/vNMyH8e9wytYxoX+4pH8uZuMXDU1Bym7WGcjD7Akj0tymA7C1h
	 /EaSXWrOO6f53g3xfKPBaL9/KcQYdtpesZTGBGPMpNqhC7uLqxnuJNrnjg0Pa+fRjn
	 4J5WElbWJqxA5UAvva1vuMVQsL0+ymjziPxVVARolU6sFnhEiMFpBwW3OVCMGhCSSX
	 CMDmpkriWpYQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD069C77B61
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 04:35:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168239730576.28944.9285940749996172464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df31c57a289f720ba4fb0bc43f369e3741c5924a0e827b2a05e203da5883d6aa
Date: Tue, 25 Apr 2023 04:35:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682397305
