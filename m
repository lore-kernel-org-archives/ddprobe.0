Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07C627F
	for <ddprobe@lists.linux.dev>; Sat,  9 Dec 2023 03:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HRKkg1gn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76FF5C433C7
	for <ddprobe@lists.linux.dev>; Sat,  9 Dec 2023 03:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702091296;
	bh=bn6dnCudFMEf+wUAZHEq0x+LctBL+0ZHcqCNxCW2vDA=;
	h=To:Subject:From:Date:From;
	b=HRKkg1gnRR20HI8AAHKIGbMFJnMOcvYLYNTBUOYKlGWTkBaGSFD1YcLwN8oybPooE
	 8FktfVNuioHiOErCsfKH/4vZgeneSJz0TjGD6kIHLb7IOZsNulgDATu0Wk8DMWT0mO
	 vhoJE1G2J1VKas/amI+NGoT79ax9qjh2rSHPBTMEt1KUtSeldoMJ08Q4I+/3zR9jQh
	 Z7pnQr6SdSP3SwAUKJWdreRO875XF8mDvDCFdDNFUbElt+79TU9wMqzHg95soUSvuw
	 oVb0fBQBzp/Bs8+xsk7Q0X9bBORDQxI2KvBcEEI8TdaNJXMI+ExZwV8UaH0ACDnAIu
	 c4xYLNvZEjPVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E2E4C4167B
	for <ddprobe@lists.linux.dev>; Sat,  9 Dec 2023 03:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170209129636.5181.1565020930195094645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 734cd8609214c3ff5995ef2653d8beef664d47cb3e5a674cc9ffa3cefb9892f4
Date: Sat, 09 Dec 2023 03:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702091296
