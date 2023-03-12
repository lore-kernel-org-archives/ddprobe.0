Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 397E4EC3
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 21:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E63ADC433D2
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 21:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678655225;
	bh=SgfcE4olcdlbOO2cA9/EY/bEMR7fc7Gn5ehxWt9kv28=;
	h=To:Subject:From:Date:From;
	b=H335XE+R2+5ieeGYxYEhmoq/2tOttSXJyXCe0rf3mAnGH/M+ZQU0gA45TA/K60Cbg
	 Yld6w2997e20lmzQgNfJLvWoeGXwlX3SZcrEUjWQEry6zwbbSIprGwdUv79hnFZ5kO
	 Vkq2BP4Z9YBMo2In9xV/sCw6IYZkmdVbVJJ2Sv/vff73H+vyX096NjBMyeRpEDr/zE
	 Tf+1RorlO8wJ1d+EpCaL5W1MakM/Hav/ILM4vssa12e+HUCFi0lwD35b6UH5Q+EwPl
	 5lJI5EhO8Qby3jEGyrs3wiDZUn5ssw9WRk5TgIqUAzD5uIk6Q6bS0vpim3mg8y06Il
	 BkVcUOn2TeREg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB313C6FA99
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 21:07:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167865522580.17763.2775195823325449695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14f635097f583550bd841febc7d4be269db78c344090a3e8b458b5466a755f31
Date: Sun, 12 Mar 2023 21:07:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678655225
