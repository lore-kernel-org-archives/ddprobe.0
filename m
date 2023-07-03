Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0230D11C80
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 19:46:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2AF0C433C7
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 19:46:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688413568;
	bh=zBTudEslHnWoVbUTtRxdTX3618gKy6O8kkTbdoECfAo=;
	h=To:Subject:From:Date:From;
	b=LH+43i0b8U1G0xWCUVC6YMCAyUhOBVwUvL38cSguFh3/cJfND824y7RUFHJ2AkNR1
	 5KzqD6elAqGejauQfSW211yObU6ppkGbs4xXtcMG3I7nl86byKuryZq2tDoX3pJDFf
	 UJmp82I4g8+VDdPerZWIYHNpVcN1Nw4+/CqxTiFW+Gcpl7+eey9ypOTlBIir5kgidK
	 0b1B1X83btMjyR8J6lY2YkwWr0hicTaSAAxlEjVYvUoWF0V93v1HWYv6OaqQ1nTAmQ
	 WFnAoXnlVpY9KxyU8Cf1UYcNsSubohVyBJKK4q9fuxF9i1a9hjm0novdKNRDQIxQIC
	 NEp5Tv8Wsikyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A784CC001B3
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 19:46:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168841356867.4054.2068082300673311445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6d332ce62304f2db6e690d0f404fda173b59ee2c25a54d851f5fc2f23201722
Date: Mon, 03 Jul 2023 19:46:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688413568
