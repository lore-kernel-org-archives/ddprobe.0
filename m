Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE645257B
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 08:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8636BC433D6
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 08:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670316654;
	bh=eoMdIaq3Wg4zRkERdVRQBAmtSvw5UB8wWCgmH52dLII=;
	h=To:Subject:From:Date:From;
	b=f664/sMbxjFgjf/EpUQufQYQ3I/EsaaMZ3DVobQ5np5NA4iHnOEF+NcYHWwYfs26Y
	 gZezKzySr83d2bVQyZZB4ki7tA8G7W56lYd8McNF+p6F3QHeupReOVMjP/r3ptdHkq
	 ifqDcSPWMUwITWaDT17z8n6EJDV11ebdW0RJ6IPTC0xGcp3A4Ywiax+ZNw9VCe295l
	 C2SwluMDu+rAE9HK3IfG2Ntsn9g/WIrw1XxMQgZbReSZMqsH6V2fQhXUN8zObCK+7w
	 cFkw7XTxcDiZXm3CJcCWYfq0s7EoiSTKQqvDFSGHJsvbzVsFAei94XRhlEGPgJ4SMa
	 GJe35DEXqpF3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67411C352A1
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 08:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167031665435.21170.7648551654754705182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cfe2463c7a67852034327f03b937d62c17a98458a33eb467cdb1d83d6fd3bc5
Date: Tue, 06 Dec 2022 08:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670316654
