Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD166193
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 02:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81618C433EF
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 02:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671763287;
	bh=GwSFw1f3IKMVOkn08W+YWVowbxJ9aO5OG3ZlgXUrghQ=;
	h=To:Subject:From:Date:From;
	b=qtQGGyWreMKYrEUFyeYluXhXPQgBoxMjorJ+SOCDmXoXNYGVP+XPkAQwIzPOPRRqm
	 LAFgGRGcEl9+1urZwzukyIsNpSI4QlcqJgTS5JQ+pI0xotEitLLrCQo74NMASlySnM
	 pAxoa2p9qQimkPbPj6iCpB8RBV/vbWAqCLJFIb4nO3GG7BPNWL1bPjFDnFs/FMkdfI
	 7u3f+y457E8PvwA5qMQIcnj1h9EK9yGXw3Gl+OW6WxaZ9hpiIjVAR2gjgbkUmyqOCE
	 sFSYhJqRzU88o8cUVO3nhKuhGfpmERMOEQiGuQRwAPbHg/yXsR11J0+qSdWEvw/gfH
	 aWIJRFu4BI9Tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63ACEC4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 02:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167176328739.14310.9746600031178096311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40740d67d3bcbaa11243c4bde44b5cda4569a990867b4b92ad02acf29d173ee1
Date: Fri, 23 Dec 2022 02:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671763287
