Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43ED65CBE
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 15:17:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uS785C1X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3FC9C433C7
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 15:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697296628;
	bh=RxcTeWAG4tU6nciIQON5lM0f++Xch9QmR1mAsbfCv8c=;
	h=To:Subject:From:Date:From;
	b=uS785C1Xi/JHKiATonaNGh6Jh9ysluS/J+wnovtEqE3hpDvrrT9BD3qSv1ACs0DK1
	 msi2fJ6cH8YczkQ8EQzKEXpC5j2eWLP3L88YomGMfPKxjAZDD9HSrI75AaoOrxMCgy
	 JUDXgbuC4qY6pH6aOjf0kKzHer4qroI8HknF3QpHdRmh+ZideAVLFge2FuSOKQmoiy
	 hP9jJiHqJUj6w3nMjx/o2j+4CeLOxr+A0fW5h5LBysh7p5S/qiWQI/ZChuUTD2KWSU
	 pMc/EhohD8+ZL6VB0/EBdfRPKcIIcMKTpuBSXvvecTykFHM+dIYQd8jOLFX1R/C+vC
	 mbt+2cvUVDzPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7B2FCDB465
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 15:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169729662867.17775.1029805221100125454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5f52e1fc6d81489751d8e8fee2cac4df45d84ecab96610b79a17c36c0503911
Date: Sat, 14 Oct 2023 15:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697296628
