Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA6281FAF
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 08:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86F0DC433D2
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 08:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673167887;
	bh=zLMm7jtP4W6OFlC75wnOHSPu7vlAQqQA/5QwrSeJVnE=;
	h=To:Subject:From:Date:From;
	b=HujBZj059U1IJMgKPhEq3VhHUu38gIZ6EPylPzIjqTRGW/wC1YLEMYCEv+REf2bFo
	 ZZbJ3AyFBOfQ7lkErpDoEW6nJxkLBc5fIanZTWuuR8WVSQYCIToyJDWNo1S0Q8bM39
	 JZL5LDgHB/NUhUC6b8uS9xpVo3v6CCPN0mD9hoqVXOIc+un42L+0wCQV1w2RDvC1Nq
	 s0msrWqrbA5gBGASeSM4NQLC++CRgeAiopMcGavTsb5KUQWIjqfT4RwuPcetnzMs7R
	 9T6/sQfUF2kaHMK2tuKpeaFuLgm4PfsWP+xc1Ql8y/MhPiZ6nbV+N0tTTUxVyAtut0
	 bWiVhaV39ZTCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67358C53210
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 08:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167316788740.23750.13783432151802348625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 444faa6577ed9ff34a104c087fe02d4cce17c01ecdbba44feeee5d96ebf6ffff
Date: Sun, 08 Jan 2023 08:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673167887
