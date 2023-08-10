Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5845D1107
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 06:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7771C433C9
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 06:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691649788;
	bh=w0lZkrP/9MZlUhb7Wr1FyuzHEPNHwrgTqMxt/qpGyj4=;
	h=To:Subject:From:Date:From;
	b=MAyltgVeLjpyETAldjGYZoanBIka2nVjOJUR/U8vJy5lOb4SrfriZ2mvqz15pQbQw
	 nq7jjPREHeUhaX6dD1wNpcORSMvoFX5yzjG4zgrV5nIjM/RxPtvdAVIJy9E75LCKp9
	 NBzLw/yGMjl1CpI4N+neEjyAkjq2jWT3KwJ35JgqUw7i7BtO1jV7uDwnLkbPLt5Pt8
	 0PrtYA8rJLAytfPl+IT33vnAz9zK+K3NEkAV2bp1d7J89xiFt2cSM/807NXWmn8n/x
	 29jSeBENPrZkJghUPKd+f5/0+VE1ooM6CikrHq6GuPT9+QpDoHt5Gn9d4082qXbGCl
	 Mzfg/VlAzJjlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BACF6C001DB
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 06:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169164978875.6666.5259081075585260703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6226b86e6af5477392aff589cd653b20feced6e1eead106479deef60b3217a91
Date: Thu, 10 Aug 2023 06:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691649788
