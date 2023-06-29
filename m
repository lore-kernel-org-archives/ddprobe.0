Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7769615AD
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 02:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7E89C433C0
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 02:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688005388;
	bh=R64uVdP94QPvoBEb/Q9nMHwvb4JK1g1sCw4iJGAfhY8=;
	h=To:Subject:From:Date:From;
	b=Dd3t8Vo3fDG3zdzaUZGXNV4MFjV0pBB1cRATnY7Ay1u0e1Ka+nSKe02TsaWxJdy9X
	 7OLH2FRvBZDOyXqQ5UKNvS31rQHpJXOv8/KARw1tQLkfwntuS0crXuM56i1xLgxCVV
	 Ke2T6a562NOe9JhNvGXoh7VJ9v0w5J4CrMpuFw7Ebw3BZEuTJ4SJvfe7qsaYoxfp2+
	 SCeMzhC462r5sVHSToU3gMu12dqS2iYgp99wiQjpCjDQLoHQQETgwbqwTIQGuH5A5/
	 Is59Whm9Vj7/aKQvJOXgHbn7wpFTVU6ahNLZ3wWfLtPqyuePviNvKwVxJzG5PNGytj
	 sqC4Dx9W829Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6902EB64D7
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 02:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168800538873.24049.18279404327306661221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52c678da8bc0d6897ad43f201c53d5c0481eed46e71f0d4d6fa99b0d074ee4f7
Date: Thu, 29 Jun 2023 02:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688005388
