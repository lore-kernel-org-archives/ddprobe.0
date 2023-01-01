Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D70042F3C
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 12:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8869AC433EF
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 12:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672576287;
	bh=JZzsdePpwpTCBoNiF0XU18Sjb1gprEw4nUfRc6fQlDI=;
	h=To:Subject:From:Date:From;
	b=TgIjWBKc5VXmXXL9TS3YUtHdx/C8/4bkL4X27Mt/iSJtaQvBwC53CCPU+rRm/2TTn
	 1arEkypJS0bPHa4ggoqySNWlnHrrpV/mFwKfWknEyCWUEipwlEppco0t3Ksz/V54pP
	 VKkRknTE7kcRSYatoIZQFiy0Ce1Xw92kxNyibC4NXRfebeIhc9kccxeVVccF0uGPXB
	 6icaaTL1nfPEP4QRO6A9JfJq6KnZN+AUVXm1DhLYSFeNZDoA9Zo2frq1LCifWB70w7
	 aT7xfkwQMuH/h34/YLZmQiQ0wB8bmrg9NCjJGeY44W6/T5phNgfR7pydVzSLDxW3Q/
	 6iMKQKhj6eJ1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E897C4332F
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 12:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167257628742.21353.14077801299179130708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2863dac9de14d398494e4afba09d4317b6e87464cd55efd4f0cd0ace99aa5ab3
Date: Sun, 01 Jan 2023 12:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672576287
