Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D27CB1FDA
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 09:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80740C433F0
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 09:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670838687;
	bh=OmJqjGX9UNZ4OhOFzbgZUxFvsLct5J0brSGuoA3SYwU=;
	h=To:Subject:From:Date:From;
	b=kRYcQc15bQyHKGTsmh+br421FppYJN6HzcCIO5bLTTxeB3xQfqMZR1aMhZdXqi6iQ
	 EbPzH+DVOFvvowls/9yTPoFyNHZ6djiz7g6CSl+l80ARqDI9DtPllK51EndZJSkHYr
	 jbF/rKZxrEWVPUBEk1F7xyjmkQ9dCVHuc5i5gCleOPbVFeqzrQK0pQORMXCPi2CV4a
	 5y4UlAfV6b01UkkK3d6oldFIjWLtbIi8wBh5VLI8KYM0MaVXxkKk146fVjW1Td1/Xk
	 fUvzEozmpMQvPKBDqvu33LA/jGnJyse4qr6I7foY5Rn2ng6lXMawAOJu8RbyWTnt8k
	 Sz8aFCQGscOQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63CF6C4167B
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 09:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167083868740.10505.9978351936438804578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e57929f0d5192de726a4370d20538a786adc6e95e4035d0270b6f23779811d8
Date: Mon, 12 Dec 2022 09:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670838687
