Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6959C13FF1
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 20:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD053C433C8
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 20:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693169648;
	bh=0w3pxXEssH/pJBjXLCqAJzfIxSSZVvWK4+nE/ELfJDY=;
	h=To:Subject:From:Date:From;
	b=ExhTYnIynFeAwdKlrTFhkayigYLNWxxVbS8nwoWx2GwjQarJCID3WihqZr97rKI4C
	 lHQDtS0wybvMq//B+zLOCwtHLlQEKvjNGN9mo+ivN2KwrrUuuMhtG/kdHkZmYnJLTE
	 w3BF2eFWla+EcQed4Cd0FuGEXIxv2AQBB3sgU3MGIyqFFA25+4mOjXo+G8luABGsNa
	 qqT0oIDW7ldgatBB+9TYwtd9k+iLtyAT9R2bavwE5C1oHjwamQouuLA8ZMXtMXGtpB
	 II4ushbkK73wBmpEzFIEY3uLkbpygCx5HYldzIJFBqs357sohSiCIwCo3Y3yuC4SUa
	 XerT1AA05ZOFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC29C83F11
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 20:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169316964869.20378.5562252817394436770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f92af4540a6631ed94e3c5be1926bc4e49feaa55f561f8270aba5150aceffac8
Date: Sun, 27 Aug 2023 20:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693169648
