Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E04F136C
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 01:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87256C433EF
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 01:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673572887;
	bh=rfHvCAsyDctSGPhYPO3vY3XBaFQ+tlm8spRI3woeCaU=;
	h=To:Subject:From:Date:From;
	b=ZgOvHqcfOL/RVS98wzUQx5CYkg4664mzllkNbWS3ZVUVbqGSRIPiHAAy7qKgiso5O
	 zi4EvOR677Jh/irOyqBsU3NFxRHvzSXDEBh2O9GtuWAapvWK2fYfERqO/EgwlewP9E
	 yoiU9TAwvRZHlkLPw5fw3pPzBuN/QC9FeERotMgBR7iaSrK2NeJzRJfPgHHZdBy0BX
	 gJ4A9LGcXZ0XZihzcElpXtNzNS2+iAWITxDuKClaUOVVxXbHQEIDv+AISlFpBw0Wc2
	 UAyNkmFi6JAOd4/srEcgG+7gJgOiX62A8rd5MJw1MB79kl3GeCQuBDHikINPsh5VxP
	 WBcqtTQMflKgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 676B1C54EBE
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 01:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167357288741.1910.15279719821763515305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01d7dbbb6805db55fd767887204635804dca16cdc102b9663325c40ac7540ab7
Date: Fri, 13 Jan 2023 01:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673572887
