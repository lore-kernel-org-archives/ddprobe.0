Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF2766FD7
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 16:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69054C433D7
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 16:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669911054;
	bh=hUSUEV1RmE5VZVaxM8MbGNAvWjBDOA4wZjHGOfOfYLE=;
	h=To:Subject:From:Date:From;
	b=fd0rxrfp6NkGdQKYUD6DA4UIqRspsdFi9D/lxd2Hy7kjKMkkRoXK0sLiuPq5D8BGw
	 Wr0cyZ+Axq6+phSzwCKkojy3RNFC1svPgjbCbzGuGPYST2VVX81XdMTP/caworMYmI
	 WuIB2OfkAIpD3bsu4niDj3kS+yXJDSf7bwkSWyufKZ5ykEK5Tm/rYGreg6GyewPr7h
	 5A2J2o8kkXqeZ7qYDCFCs1frnOlPQFvc3SyDNJw9bH12ogr3KIEiswY/t4gF2EXZmr
	 1ookMcKcQIJDvj2IGeQj5oSCCi8ErLEcgf5hlZNQ2QDESlUG+LBRZqGoBcDBY7aCQR
	 KH/+xR7qyT1GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F32FC43217
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 16:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166991105431.4015.10986310800380519121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ecfdf68a684810a796ae74bb390f37bca45623a58d057366e209c639f63e389
Date: Thu, 01 Dec 2022 16:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669911054
