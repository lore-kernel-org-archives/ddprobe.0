Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 513C019C
	for <ddprobe@lists.linux.dev>; Sun,  7 May 2023 04:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5BA7C433D2
	for <ddprobe@lists.linux.dev>; Sun,  7 May 2023 04:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683434285;
	bh=yGKK1oL4+rweGZBvu9pzUcULCvrBufQSHpdCPm5vspU=;
	h=To:Subject:From:Date:From;
	b=A7MEgw4KhHfCFDjW0Fa1V62gSx6P3jt8GGp/u3IlKZGRXznGM+zf+T+LxCI7v+dBl
	 5NzHWyXcxv3j9Dxk9SoZJEqIlYpFyNOJzsRn7NkekUyLLZWQmnR4A2Y4w5bAlaxnFE
	 sVKtDeWIIzQ+Ub4vzcD/4ZS6Tx1FQnqaS7FnOzy/T/506tnj1qDg7d+vZQJItwh/O9
	 yrnSM5yDjcNhPLhVREJxrzbt36LW/EewOWvBl85lqO2P5ZuXTlhs+uuoqqyIpRDVSM
	 TrPBjH795SdYLXmMhmrC3LElVzjAQ25Ciw8GGcAZ2pEmoZfrnv9XYWPUjBCr9ZKuQ1
	 EblWzV3t9XrWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4797C77B75
	for <ddprobe@lists.linux.dev>; Sun,  7 May 2023 04:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168343428578.5360.1867254159049984025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db972433ff0ff4df1d6dbeb3e5d74da6026c6be1558cc7f05002da7e146d5da8
Date: Sun, 07 May 2023 04:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683434285
