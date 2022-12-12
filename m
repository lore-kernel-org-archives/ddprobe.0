Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC4B97B
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 07:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DD5AC433D2
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 07:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670828487;
	bh=99g8iix+9BcDvkHTVkAZAofo2v39PBJEBTqOZzM6oRI=;
	h=To:Subject:From:Date:From;
	b=hTJkO5bF6HWAlm1nWuQBnos1aKLdYiPvpr+neyWxfK94VOdaGJakgg3CFepRZlXP2
	 DQdr+No/nRZO0uzAmEfZUElq3wICxbyHS0QeZcnupV8Rltru1/M/T8GyUclTAhINnJ
	 V4z6Wy2cPFlfTvZ6bmtNlU3cnMTigklMScO0RylrNH04w9gnRuseZBuC17cnDe2PuW
	 +adPwlGA9BtcZVLKbxPYmwmgkns6ViV7B7TFc8YEPvF0ssAIHhX1sjdkz0mNe7Y/ZM
	 jwNo5CEC0F+KRfswGPr20llOOBUNgZLFE8aHh6LAmCcPzHbX6i7/we8pTomoK/lTpw
	 7V/FExMOA193g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64154C04FDE
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 07:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167082848740.12575.5455622633969287111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 477eb7d978b8e85cc996efcc1607ddc7f0e6b667c84435c2c6c4fd99efa05327
Date: Mon, 12 Dec 2022 07:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670828487
