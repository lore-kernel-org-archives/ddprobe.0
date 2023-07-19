Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B43711BB27
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 23:42:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 08759C433C7
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 23:42:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689810129;
	bh=vXKocwk37z4UlMMFBz0GrzU1nRCSu+fF3XwmJ9rjZnE=;
	h=To:Subject:From:Date:From;
	b=VIC0oRk3VnsLaaHM38s5c+mgjNY9Sr7fQbSSVrkwDB1boDX8J2DAdEYzlJWB2fpK6
	 NcQjCeG8AKcwCfokRQWIp6h4K7jvtjsJb1uCsUOzw/2Sp3VAgV3RMrxDVDvDgC0VIh
	 xsYVucGVCnOC2wIf36lnU751wAMPOTMdqx0187Jw3TLBqHPRcQzeHf8ANeSw1mYq/X
	 qwWjIPVkDI3Ff0/etl/OwNmahlYy0geTX/K/glSEfoT5O+BnSPCbCBKldyWoWxgbWA
	 Yh8nzffNX7b862FcyXs2P71X6HQlBrlrujJ58V0g5Ssl4EXGQ4ae+ZDnX7wuO9yDhg
	 F4SJyzS3RZ4Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E4EAEC001DE
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 23:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168981012892.3235.4465957072763356006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 874161ee3fb9b25cbdb3af69785072eebd8f1dd3ba868195f9a01d9b17fa0c92
Date: Wed, 19 Jul 2023 23:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689810128
