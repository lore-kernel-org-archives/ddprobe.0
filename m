Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09B86BA2B
	for <ddprobe@lists.linux.dev>; Sun, 31 Dec 2023 21:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B3MUnmBB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8655FC433C8
	for <ddprobe@lists.linux.dev>; Sun, 31 Dec 2023 21:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704056896;
	bh=vsKUmXFOJRIVq1+5uaKewDIeL53Vij2vasgx/+ge4aI=;
	h=To:Subject:From:Date:From;
	b=B3MUnmBB5jr0TXBf+qA81xmJe6WxPf2xwyBVMq5Y5ASr6zEIqriC3hOJm5OWgkms0
	 LP19ffKRXJqpGrFw+sXQCw8ZuHK0x5muCZzQ1t8fFyoLVT6zmsa3cUykCDOqbGXWwO
	 dFljMN/32Mzm4gacPG0s60SmJQU7jouNvZ0HuR/PQ6nIoIjP0/MSRPTI+//qvNujjT
	 IOdSOqwzD2hZXVnsJODJTTMEn7S6usl439J6RxfSiNTLlQ7SlwEbOeIkI8Mya06WET
	 sQxb+JMLCGxeLZ/lZjLVYBqvix/usdWAp9j+mR8nlFdAJjNADJYUJxkq5Wir4ocaTP
	 tt+3niuMBVFAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66B2AC3DA6E
	for <ddprobe@lists.linux.dev>; Sun, 31 Dec 2023 21:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170405689639.14074.12946276942790369974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51c4f8ea016cf2e2715fcb221d7b2bdaa28b7ab72dc43db83a42fe4798db4b58
Date: Sun, 31 Dec 2023 21:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704056896
