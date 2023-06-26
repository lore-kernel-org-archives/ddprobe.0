Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 549D2C8E7
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 17:13:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1AA2C433C0
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 17:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687799588;
	bh=iao9SJlTfiZejhbZx8F6OVMYh6H4C96BGwaVH6wjBrY=;
	h=To:Subject:From:Date:From;
	b=RDs+LBBqywmpAYHUL/wB1j6y0rc7hbOSotmgobAQdkmMBBhuZAcd7dZRrMyi/ci6s
	 NxhAXRGZZ5usTisnQiaVtSPyhjXfEz6L2lvA+pJJtfz/ynf4/rRRbToM1O0ZwSHj9K
	 9gIFR0qV93fNR1xA0IYm3R6G3t/2sz3hG5byWDPw85WB47LZYpA4Nt2VluARQCAtNf
	 oUXDLLpssBW80Z4/IL30Z/9OrwbIQYXrtkMppWGCtrPi6ykwa4/pyNXx1Ac4FOBFT8
	 Y3Gv7oldEGleT3tJeOffKDruoomZc0wI3NiQRmOWDXsK1N8MMGOzC5iR4YlPnY37R4
	 DU7MmaAAHVhkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6B69EB64D7
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 17:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168779958867.28712.3518159987480571863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55f890502a83ec15da65bbe5abddb8792a30ed9aead953bf991b29ce56db7488
Date: Mon, 26 Jun 2023 17:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687799588
