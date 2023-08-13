Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FF2E7E
	for <ddprobe@lists.linux.dev>; Sun, 13 Aug 2023 10:13:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4FACC433C7
	for <ddprobe@lists.linux.dev>; Sun, 13 Aug 2023 10:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691921588;
	bh=OpbXP0mtf+JKQcbfDn+2BchoFzWH8Zt+8Hu6WWRBO+0=;
	h=To:Subject:From:Date:From;
	b=qgWyABjcynQL6BkTZw9ADLoO3fq0QJQ/E3E4jxzQrlD3e/trhoSehfxe9fOpNhAKF
	 icCeHM54Y8KcRGygJ+FbrvDD7LtsM//hkIHCyP0wk8KK4F6guo06dRsrXTL5vEm7a1
	 58mSaKVUxXqt3LlgCsk6VDXeDHCuuKsOYvV9wRAWM4CDe31++PliCjp7RQSTwRAlAX
	 7zFBEwaVJJIMMh4WDt1zqPgcmtnSUbFyxR8lM8x4qaRYVkLTZhUvOdNZH30v71y4dm
	 EA90+CwJP48y1vU+blg7qkeFnQ1aCmZxzB1A7c6fP6U7rFEaRSKxwUwrTARf8cF5Qf
	 XshCdPaT8wSwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA69CC001DB
	for <ddprobe@lists.linux.dev>; Sun, 13 Aug 2023 10:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169192158866.11759.8393098505767788657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01f5055bef32bc8e95679cbcfd042a02f8c3b82d4eecbdf63247df264faea36a
Date: Sun, 13 Aug 2023 10:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691921588
