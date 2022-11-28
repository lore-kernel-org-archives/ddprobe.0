Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF5FA2104
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 08:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FD93C433D7
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 08:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669625454;
	bh=TiNEv//z+2ZSo/gr9/YaZINU5mKgneAUeaIvN6xZTIQ=;
	h=To:Subject:From:Date:From;
	b=DiOwPvO++r8QvvLSO0PJeL4a27Pj8lop3FTD0UgSEyBZfZyx5a3hS5vd7/4wumIl1
	 NKofuSqzZ/cdPVFvhLIRgXDoft+prbdCAO8w2x13TDrEnd2ZVdUIgAnUGpmYQWBWlf
	 B81ZT2R5N8SzQUCSt6PcgcxHyBVGzbtJxxSjaIrw2hch1FpcCzUkuAttsIDKEukE9l
	 Pe7SsISynNr5HVJesEZBCFF9rjP6itzvpc9uh+/ILRUCvVuUQfUQRZ1h1PyrsyUKPC
	 2VZb7mkz8DFcSFjgDGx56MyQYIQYx2pHr/H+A5HfmVukY5uGHRsPAJw8upqBQNuqdK
	 TJSmSJZWdJltA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52D83C4332F
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 08:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166962545433.16232.1158967561747935836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae0b1e9f786ec769fc27bf10ed32bbc923d3b8115c0f58fba8f11055cd33e7e0
Date: Mon, 28 Nov 2022 08:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669625454
