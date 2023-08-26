Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74FBE2C9C
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 16:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC5E1C433C8
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 16:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693068848;
	bh=0aR9cgxnm2jGkRhzi69T9gJZWZGWK0BMZcOF0l40HWs=;
	h=To:Subject:From:Date:From;
	b=H07d4YfSNiA1mw2kpGQ/I5HyqTzET/BixbLg2MpuuMzqGbfD/kMImozB6s6EV5aiM
	 7UI7zfiXHuYh9CusKBEWMVAcOdYyoHO5Gf7jHPgxAL/HpLOLNkIZEaAFTKXBBk3qCx
	 7p+ds6OYwpkvZ8vKg+J75x6o9XV42EyUNDVzVZsbl4fP911GT0zaLnAW7uY9JvblA5
	 embkTkBYbw+ZUXBYMsOiQy9zepFHZh24EDkFKZ61hkJ+Ho0aWqYY1f8Gee+kSHGuHh
	 Dys8uVwEBuJbCLBfmHQc7g6c+nNw0LWDggeWMQriBIKAXBu21uw4n0s0Iy5fQWmt0G
	 9ARGijbT+Z3sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDFB5C83F01
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 16:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169306884873.29414.6479495825151322916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2a799a1cd03f1ac14dd5eb066311fd6bc755d91e6065775741560d019d9038f
Date: Sat, 26 Aug 2023 16:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693068848
