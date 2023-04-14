Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37A9B63DC
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 20:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5391C4339E
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 20:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681503185;
	bh=bl1+W6+D9BKUmgikDBXFiKptBPpJ/hNizAjSYQ5DNLw=;
	h=To:Subject:From:Date:From;
	b=TxNvOXQtpEKnkrkSYv5WW55uoW3RXNT3RAwMl8Vevfz75u47NdRO7MTeKgMOiTZY9
	 WnDmfxZ4sQF18m3Ppld3V11ONNMMfUwEPeRe9bw1ifXMhbPXDdqHucstCaNgItoSDP
	 7WI5aokAuAjcqL5bufg9Z0dAekqNv31ZcQ9d9oU/M+cE4RuO9Bx1/BAZgM9Dv/ROZ9
	 OdOOauEiKB3vTiN99cG48C2bpxZSBjRc4qs/HUjdWt8nTO+zRUYZfDXerX4ELOvmpM
	 1vnujokckMZBh8kV8BkWPyWYcRuMwcWn82A1seAfc3ASyXgLNDtd6NpPE6Ixa/OkTp
	 DJnHfhSdLbI4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1EDFC77B71
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 20:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168150318577.5848.1741988311046138632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2766a5cadc23b102b4ba3ef28784f584912026f75c858d7f69f6c45c5527eeb
Date: Fri, 14 Apr 2023 20:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681503185
