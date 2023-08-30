Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 654C419F
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 00:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA772C433C7
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 00:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693354448;
	bh=rn2FkGMEYm2TmB3htP92zRP2OY1Lj9M4917bJ0zCppY=;
	h=To:Subject:From:Date:From;
	b=C6a9TEH5ugxHDFy+Jn6UG6R4cf2quaCbrevU9LLjJAnDTvNN4EIWrmbacxMwKnISb
	 2IVoGuzGfvZEDZsqEV7aOKenRCmCBJdt8EPyz9ZWi867gf5d3viorzBe/2b2gh2DRq
	 TFAzvyV0LMnzWAC0XmTPxn7kibhcwaKp4qtrYiSLaixEhkM760UtWV2+CdTX5uIhKN
	 8+gzUsgwNZdTQSNHv361osaP0VFpghjjW/pJLwuoX6ZLtFvQUvr9MkRzkGKFjzKyH2
	 4db3IfPPiwWmqk1Y339+YgKRj8fnj87S0aniDljGRSvk2WUV0EbDUX9J1gElzVYsm9
	 /B+Bnu7yj8ISQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5FC0C71153
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 00:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169335444872.8852.8942521118848156775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bad1bf9effd484949f9a4152cef9bfa6b33eed502381439824eeff18b2a1cb09
Date: Wed, 30 Aug 2023 00:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693354448
