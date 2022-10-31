Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEBBF33ED
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 18:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B218C433D6
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 18:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667239254;
	bh=ejko7KhtBqCsUwASNu5dmnWMwS2c5KE4zyf7JM7y16g=;
	h=To:Subject:From:Date:From;
	b=MxTjYScFxVyfepZkhOmDXWjWTWY1yjQ5DJR5PoldzFK031sza3XYixH5fELktQAMQ
	 fLNHyoUlWc7m82aYqRfChFAbnos1mvV4FNlIihGvm+554xKSOnsFTSqdC2auQJnVmD
	 7ZLkddVgZCr+kkbBJq6yKuOXN8L/bT97qu3YweoS1lT1csygrFREoDst3r56VhWUdw
	 8vj1N3GdP4L6aKabtKAPUYO50GfAi9Tip/lG8GjC09yocE3+k8HHvGZtezsqSn/8P+
	 i5qG9RHNSeuRpf/82S07UgQFQuhkYIiuOOUckT5Cq1MnXZs/9b3sgIo7Yfm72SFQn+
	 UE3SVqx27vWJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F094ECAAA1
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 18:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166723925435.7706.1952222202222870358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8229fb74af68e3c36da35b4b2fc447ec4551514da0ce8a480d86822976ae1af7
Date: Mon, 31 Oct 2022 18:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667239254
