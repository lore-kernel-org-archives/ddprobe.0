Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4F0C8BF1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 19:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E397C433D6
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 19:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670439654;
	bh=KuO790s7MjpGP+Dvh7pWBTKYaJDV5gUqGDx9Ecj2ooc=;
	h=To:Subject:From:Date:From;
	b=DsOh6fYheiUK1Thc53QSBbNoWQlnorB/x1zDcyvB/Bb9iekiInlAgWzDYnZMXtSEo
	 +M75M+c2ggbhG2jn2JGs0HjILSB7p5UoxA38n3/JXU4YiSqIsxFozB+Aa46N6L6s77
	 R3XKVFdrYrN6T52bTriIhfR4XQhFEIdGda9dAGm3//qEMGV6FlmKjd8NNvKHuz91bl
	 iqXIzo8l+/YJbiCC/RdyHAEQALYixQbwzy6LMJ7yZEdtnIxOGFfKr2CG0mTJ9z2TfQ
	 gcyxh5vQIiPbTiymPlPrSkYv/5umSItCrcWJYyPIPog3mpkM8k64OrtlJdaNg22aKv
	 S3xXvLqSbgqnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57601C352A1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 19:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167043965434.4301.13237709937775738541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 962fabb9580a45c5f5770857c6d29886e1b314eacf6997d396530497f3949000
Date: Wed, 07 Dec 2022 19:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670439654
