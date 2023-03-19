Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 667FF33FF
	for <ddprobe@lists.linux.dev>; Sun, 19 Mar 2023 23:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EEA1DC433D2
	for <ddprobe@lists.linux.dev>; Sun, 19 Mar 2023 23:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679269506;
	bh=bl6ChdAyEHVxW4m1RqkG4a8IP3Vm1Fei53ytlTFcrY0=;
	h=To:Subject:From:Date:From;
	b=khLUvQ4maXuz119ktNA2ac4qxr5URvFuQkMm8vQmqNLtTDP9Gi6DkNbrJL9zzH9MT
	 4b0mKyqfPPzrZa7ggv35DnuM1n04eqHUoGUh0r1YXIq2UUf4MFwhTt3BMKUM29r9hI
	 g24OMk7Qndkb7+MdtmI90mLnmdSKDJbE5YND2FxSgnbzYJ6Tq2tbpfag2C7dxYEdAy
	 UzTnK1TGdnVHMIXj8V6Pu/WHUeuMJ8lGq/w56h8k7oqKWuI9BmGHdE5btkHIinFpdE
	 yKvN8Mcnbo55Nvm9vLrXlu/Yh53LeI7aBof7kEceDz5c5iAysYOegJSfag4fyMj6Jf
	 WDrdL+3TqQieA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA8FBC7618A
	for <ddprobe@lists.linux.dev>; Sun, 19 Mar 2023 23:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167926950577.13782.5610884561486812134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bd6792303080cc5611f22aab79a105aaa5ef444123af9e86c3c38fe824ded73
Date: Sun, 19 Mar 2023 23:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679269505
