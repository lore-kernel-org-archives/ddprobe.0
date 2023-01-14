Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFCA9D50E
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 21:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A3EDC433EF
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 21:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673732487;
	bh=PaxEhdmPCaHGLZKiWHK4Aig8f9evQoqdtLPm+5pMRzY=;
	h=To:Subject:From:Date:From;
	b=Zz6ni2+LB1URiKK7TmGzQM2Cf1cxRD9sOXQPzxyPTSRoQn/+dVaUOI0pLkamZpjTw
	 QTJqxXPbNbDkuDZxBYTj+tz+mt6CDPYUgA7mXZfGEKQ3ZQJo9RdP+tmCxDO/Dv9mge
	 AS9fljawquoh3UlswrW+zu5jsq57S7uJ0RmAQ4BW6nYzZQER6R8TNRiT6lq6jSmSRF
	 EO7kBqs2NioXc2mjuLCbQHfqi2JTb8Rpd7X6mU+o/w5H/tZXGVFEEk9qDctUdMcw1W
	 WWmyZp/chzAjMDEu0iVyU8wjgNLotwzJ/SzrqsLJA0Bt2bJo3yDkA6eKYTx+B0HmHb
	 jh7z0+YJRMGKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7705AC3DA78
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 21:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167373248741.6677.9399251376024467536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d022dfcc8cd34a6a320d3ed75a7c5e4b68f9d16483d11c49cf7f989b5e8714b8
Date: Sat, 14 Jan 2023 21:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673732487
