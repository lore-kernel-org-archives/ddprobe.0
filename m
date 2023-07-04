Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51869181
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 02:46:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC027C433C7
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 02:46:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688438768;
	bh=4C1UJX6+4YotTATJq3dpamP8WL5fMY9PfbToyoLkSDA=;
	h=To:Subject:From:Date:From;
	b=RFQ4Zb1pSr36Mw4LUqA5BRthD9G/z01+coQdSwkqed3WnLbJXLg/sCsQWgPr3VSa+
	 YE19zz0g1WsUwxYzKIygcbDnFauTLEwlp7zcNHi/c9zzm7wr+VAkwhVT49OkwCfGfm
	 Ar4ThM1nzJtqTvl+D65lG5zTbIZn8btBgYUcmxj9apj5EFATSWhZvAwcO76N1x+IgT
	 ZdZZR2/7GhInltojkL7HBHcsxcbZlhFr8E31+fqyiMdPdbkAsmzNLGvYO0WlYPyXaM
	 Xd0HAgSBCbJ2BeiHWoU7OxHcug0qRKkrfbijiYFOsOlXCNHigXczXD6lA+h14rt6d5
	 NtLjlihAe2wMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD9D6EB64DC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 02:46:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168843876870.16827.14235228226050971752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c55b36d223ea30351106cf99b2a98bdaa6715dcd62b757a8ca2aa821f56200e4
Date: Tue, 04 Jul 2023 02:46:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688438768
