Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D188DECD
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 12:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F080C433D2
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 12:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671366087;
	bh=5DFJlkyN6IE0wSQMdUfntZ9ngQnFJymCg0QAfGqMOQ8=;
	h=To:Subject:From:Date:From;
	b=ucb+RLWUZl710DK/hvJUD2P3Yhed2+DXJAaI2KyhbyJnfhF16A+FTQPqyssjLGQqj
	 uCCOnbbwzgq2v7DfTpvGG259f25Q9YIJQzcvf9t3dPUUpHCL53wE870gUoQrYrZoMj
	 AvxrpdC2s6Uq3KnhMk0rZqlKXAfM9jFFeNiRMNRNOI1lvmURAayFxyZoGLfGzsKKmm
	 FKLVh9vNK8HebP9pclYQdEPuc09BMS20v++ixC3N8PYy5TI9eY77lB/+0u+gggx8M4
	 MMqKkW6BGW6jvrEjAm/gkCKTNkkv2RsGBai8RweLxCaXqg1p50/ip6CZOB988BzeCj
	 2yRwxWgl2vBkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6176FC4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 12:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167136608738.22260.480484503558042975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d0a8b309f30ca2689caf5512ecee0242f089d7f15f79a8b8075253a95e7bfea
Date: Sun, 18 Dec 2022 12:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671366087
