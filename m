Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C50F87B
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 12:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 749CEC433D6
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 12:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666354253;
	bh=CoOTBuphI6UbRjO6ZfOzHXb5hXb90YGFizNRQSno7vQ=;
	h=To:Subject:From:Date:From;
	b=K0E1C2a11JaZKjweyjqR7LsgFu79Mvx17nkki7GYZ6QJRJP19eBOXO+S5ZpYUu39E
	 3S4C+EUhoUsdqznldc0f4mLQDWG3cpRxqMn0Bav7QU9nU6zi6J/98569wWNYlK9uPM
	 ydiy1f7g9Z+o2QdItX1Jo+3I4oA3BxnrdZCeqfuoVfVL3ezP6a7Lm4JEbW3+NkGjrJ
	 soJPhbfrHdYFgsDXRrQAgCskfDQbNRmrv+CMNQTUeZJbSIrYGD8LgAs9MQIfQVHmx1
	 cjIqOUgRD1Ol0PUlyFSaPrUKZdOtgpuKcOBUdNfdiz51ULh7ADXZySFW6Tc7BtO6xP
	 Hy9iiI9jZuJqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54353C4332F
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 12:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166635425333.9813.13634872109723232108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ae343e6252afcedf611461a760e49075e7bcc2cbc9f48700f001f9eee9af7f2
Date: Fri, 21 Oct 2022 12:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666354253
