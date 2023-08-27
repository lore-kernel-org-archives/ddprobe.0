Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 656D465E
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 05:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB429C433C8
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 05:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693112648;
	bh=n6rZEFe5YMziJ1Bnj3kZNXTlUDat6311exiQTYxTXvI=;
	h=To:Subject:From:Date:From;
	b=PGBR8PNTNSXZQiQ1ZOLln5EZeU5e2A9qY75pX8V33K4hAJjxsRqJFyhI2EyQSnKRS
	 2qCeY/DwGE1BWS1RZuMyJg2th876sRExY45wkx/l67y9YdUSg/EVir7G/RoRJdy22c
	 BWY5ARs95xx5+LR2W5YaUEw9ibvITFWWr4DI5ZnvnTFUHxFszj3GdVCZO4avMOsThI
	 yQ/XsWm+8HTsJBtDbTEEUCHcflJsHJMwaEF2T6GYQI6LZ5XeM/3YHx7LXlYJ8l9CeF
	 CFo7b+C04hKyZXgKxoZVSC2EOrtUnKaffizVFFS3JQ+0EEiXDVk8cQUHXxIjKGHW3I
	 wi9g/03hPWkFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF276C83F10
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 05:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169311264867.14107.4823394757354886013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a38501a5ae27eec95c238b70ed822c0dabdac0a6a2a0734160d5cd9833afe279
Date: Sun, 27 Aug 2023 05:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693112648
