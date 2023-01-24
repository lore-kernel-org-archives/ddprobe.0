Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CFB563BF
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 13:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA280C433D2
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 13:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674567185;
	bh=UmuLOoqa2oMvmGmr4m/K90+Yo9QKiuvVsl5EslOxpa0=;
	h=To:Subject:From:Date:From;
	b=cewq3m9wg4ygo6F88OfaSeZ5sLCCH6BURP73B1NLSP6DyO3dWhF0ZBa1kl1CUs8DB
	 JkJHTLbVo4PfGqjAQT2sCbQ/RBHyFfYSHTDkosqfeJmzsyQ7sro93/Vu4zkDFLjAxZ
	 9wHF2Qz3MXzWzLu4nL1QbrVf5islz9wUCXpAYwHZON171PK3oqOSlXGtpOHHf+uWeH
	 OQNVajU+5ajqRhwxLdEsM/vJXdFPSjLVv6Is31AIAi238YeLlmjPh78/kly0hF/wuy
	 yEEq3P6AWeRfg5ZGSQzWzkO53OuB4Ov6P/vw9m32+nLxdfKhv8xHmTbJkD1IzzOI/C
	 coEyIDpBlWUVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9621C38142
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 13:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167456718575.32374.1544303462661652370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90495fae725e26df479a5651c1150a154fbc3b969df99de40571ecbb0f249227
Date: Tue, 24 Jan 2023 13:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674567185
