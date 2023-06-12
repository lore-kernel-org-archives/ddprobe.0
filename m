Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 956991C06
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 05:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA633C433D2
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 05:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686547986;
	bh=KMcd9e7BISG7fGrWQYIO3XjSgoi4BL8aMcpVg2LEbo4=;
	h=To:Subject:From:Date:From;
	b=mqYKUO740HybRHrZZ5jRmw1gZIkeF32+ZFoggJmlM8CZccaIE5jXriVKY+UhwKfIk
	 vO7iFjpzGd9PdlvzGK0+VAkGRVdk/+KYMcgBm/nZJ/C+fhpdcygztByZf2QzgeD5yt
	 o2LrqqzeNyRjy0eV7ayVqMxklYe6xPHMLGgQF2quxfViPCyZ09sNqytVugmg+hNNCx
	 E2riTk6D+WYWnY5fDPGRr1aslhCfgDLe35EMIgIAh65odn1rZM4A4ftJOTvPF2/uPY
	 rHAYtYR85+meKv3ujUdZTvk2FqpGPWxZa4uMm1VfzHJw1IBnC753SoJRW+Yd6xBWI+
	 waFIfLkMY9T+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB83CC7EE23
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 05:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168654798582.21152.2153327344233905329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fc6936751ff719b50277df800370926784cea6c6d80e25ce80ee3c4ddfe0963
Date: Mon, 12 Jun 2023 05:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686547985
