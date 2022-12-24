Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E55E2180
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 04:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F8D4C433EF
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 04:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671857487;
	bh=xnk0s9HHShZayQ503YGX/JS9pF9TbOkhiE5ZXiv6804=;
	h=To:Subject:From:Date:From;
	b=s177+GS+DvHDq7AN8tEprZoG2bW+PvrXGyQAA1gNZFu269sdJE3YgO9gdqFUx23S0
	 tTuwMUxcEZgveZ+JWCXItfQ5219HNkKqzoIAT/URr1khcFRwZFunARYiwdM6ci8/P4
	 W29v+uP1KLRhACyAW//IXmFAbwDqGpUG6mYv2DzyrQln7TAhV7LRDFFlrfKSjKZrJf
	 Q2y7XgRa9J80rYcuJxsPY2s0btHusvV7T/R9J9nMoN12xNhUPFYTcTQFHu4EKL4Z7l
	 MDZO5AvkDfyxyvc6GI3SL9yySQT9VQBTIDoKzSFVUz3g9grFeB7ZVipkWwS9a786bG
	 qKElwLvmHw1AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6EA08C4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 04:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167185748742.29461.14308911379796435470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fec17c28dd61eab9529189aa71e666ddc0876f6fd32e71de4386d92728bffd8
Date: Sat, 24 Dec 2022 04:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671857487
