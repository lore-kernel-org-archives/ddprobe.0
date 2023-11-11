Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 239D41DA53
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 21:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YxYrd35K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87926C433C8
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 21:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699738696;
	bh=ak2AnwpdgYFEUrw7TZdNr3DXZ6OrAZ1vPEu6EZfgyr4=;
	h=To:Subject:From:Date:From;
	b=YxYrd35KwGBxFB/42HTvKgd+quYmsXtXxMFTHI0AA+4hlCkqRJGadzGlxmArcrXDz
	 Oln4nwUDLzz8C6rcw3ie5nSsaz6deKJLtr/FyhkLEz4p3H/FDGJe03fDoOy0zwXG+R
	 3+4JyCt5oaKanhicZATTpzf9HchBgbb7hFt0ZzuUix1Ln20xmGlOmyOBIY2EDT9IrL
	 2uByG7LdMUXwiiqRUfKip3V5imGFuxVdhFBGcfRsyoNvSk4Xc1CnAm8RoUysBMrn84
	 WpFX3s2MIvOvQi20eSehT5BB976Amk0UVhroDMYe+s782u/E8iIcJDV2QZ2obNgu2q
	 Ab24dvSo8A9wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C32FC4332F
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 21:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169973869638.2437.15651448359540977681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebec2fc8a2dafe7dcd4d9b0fae180bc98e4f61023f0500474260876290019585
Date: Sat, 11 Nov 2023 21:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699738696
