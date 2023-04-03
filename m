Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B84F17EA
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 07:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1AD0C433EF
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 07:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680508565;
	bh=KKjhUoc7eUn4K4TdhJL97imVoEu+0VAMNILEt80CY9M=;
	h=To:Subject:From:Date:From;
	b=Lg7dgr6z1rZn2xCKOHyEMtj8Z2MIR3InPW+WGixR6NBMnkJinYLi2BZJFZ188g6Kt
	 kFMWSIghI9+nPIkubQ8YDCsdR2P/kVw9AB72U7cBr9c4nZ+56qPqicUvO92f0QYwvB
	 wWaRLDY6BVnPFGcdZWUvsQKBqjGhpXe8D/Fplq4J76q3fwW/s0GVjw4Wv7u+//jxBe
	 HCr1yF026HmyyqS1ubTRcbr8mk21QeUNxYmCoj+LOPfc1f0KV8RNhGkvpCPphXp+97
	 YWhxCZrbNBSHwRcSOni0Yf8kDUHD0oZUPBxNIC1Jt+9S4oD4AGy6s6iZ6yXn492S4e
	 vBoBEJZ/788ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAC37C761A6
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 07:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168050856575.29207.9543922032562908442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18d3fd7532627be129dfa85c82343753cdc8a255051567d0e276ed59be1b9662
Date: Mon, 03 Apr 2023 07:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680508565
