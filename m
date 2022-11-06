Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D978F23D5
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 11:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81569C433D6
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 11:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667733654;
	bh=JnA33ZUzHDq1JN+PmfKnkTvpU2wq0+PI99IKkGZd5ec=;
	h=To:Subject:From:Date:From;
	b=FQE7rbtYcZ/32MFWcL7mHZRcynwRLc49t3ri9kjCnxC9PLv3eNfAelnbLqisnGkOT
	 saP8xZhw8Ka0ek6uejzITiaz2efNtpkO77fMdYpMiC7uoppsmMVUpd7JAZ3PBvKSjN
	 +hz9NnHj5L53rzEB9rdYrmSGHalCIpfFZsrvZlvTMCUFaxV5AbhqstU+sbD2eT+OZs
	 9vgGseMGWdxQ+EIHtckLuL26o7v0z0Al53Zfe5cPDhOX8w3mv57q5/CEOgdDkqKCq8
	 /ELOrSjoIYjT+hjfnWVpdsRj4lJlXP25VxXPUGLpAOQCs1hSoIHLAPH808GoqR1UKI
	 urW5eNfDNB6Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63C94C433FE
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 11:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166773365437.14289.8665028595860524522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6d82185052be499b006c033735ae8f1063cdb4de1c51dd8ed3184fa190207c2
Date: Sun, 06 Nov 2022 11:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667733654
