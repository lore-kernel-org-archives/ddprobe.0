Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5751715A5
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 04:33:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C72D3C433C8
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 04:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687408388;
	bh=+KHQ1A7keP/pwNjimPU1FZ6/lqXu7eDU2xuEbNNyUWA=;
	h=To:Subject:From:Date:From;
	b=oXR235GnPQEkDaR4UJZ3QmW/mO04Z0Tsf75/EKMTB/LIdWWXxr5Xby+MTabmhBBWY
	 gD5VnjDUbypMXWk6cgpu9t/H7s9PKPNtIoP8Sh6ZRUb+j1kzlr41ICiJP/YxUm5tyS
	 Hx7VnvJT8LvMG0oriiiMpaJfFa3CU4NPC/Rirj7rPkOR3180W744ahAmqezbw98B0U
	 k1CrMgFeT0JeFERlXG0CIVWqWsLBkGuRJZWHqbwn0YyrhrCroC0FK+axEWsWhrbiYU
	 ksVQnpzx2vg1/dj8e8WwfF8btKqvr6mE9XEZ90ChMfmzKvFFJE3Hx3K2wX4Y3vb9hb
	 EI+GBn+dMfVKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A87E6EB64D8
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 04:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168740838868.13872.11367703286635926493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3625f45021a8aae5453c6f697cbbe1749eb7c8e0859a2a2c47473da26a21ad50
Date: Thu, 22 Jun 2023 04:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687408388
