Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7F3C36C
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 04:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 879BDC433D2
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 04:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672806687;
	bh=iZyAl6ds/luMZBBVL+kTK/rMBRkN+1XOa4ZHw1QiKJM=;
	h=To:Subject:From:Date:From;
	b=K7d6+cNPlm0rtEuQg/wOlGkK7l4CXhELG4GKhUJbkti6H3GEqRJR/1tOsHWWqI3MN
	 Vqt1dtR74uVeRSwg+c2RgXlyd/AlcedFeXq/EaerU8XCl3XZO11Dte1QvKK6IVMu4b
	 KTZGaHqVUKE4jg/SndYDc76xFJSB/1UPOFLrlhkalAzTlNtgDtEoLm/Krm2nreHC4k
	 BfYN6+0fvaG3lZ4oRj5v/4CSwZGE1mUudyrZmgNDo3n4xCK7A/3E3LuuHINwFK/gBz
	 3WxGGhHqVZpcsR8zeYcPDeQcVmu40/kBXe+M7RtAWx5wqRN5FktLG9csDGhuSG8zat
	 OJjRk+vzmsArQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C2B6C4332F
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 04:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167280668742.1554.1238656774876979000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecd7c938e91824b39dcbb40c8672eff39b23741b428adab2ca385b6e2d04555f
Date: Wed, 04 Jan 2023 04:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672806687
