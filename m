Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B12947E7
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 09:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D18CC433C1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 09:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661938253;
	bh=W9l131J05/29F+Jvcb9ahJhgeQBYEKDXIE3HvWZxcgM=;
	h=To:Subject:From:Date:From;
	b=CfM7FM4dHMS+F0vysdJFVpK5D1nDRJ/DQ61qeeHpcaE6sHQxkxm+xhu8e36S5GfYj
	 07R3cMv3qycAzBaM9WxeJrTQmgpYk+87d4injok8EjYuYLVR/AQwwmCsQMXszxGcrN
	 Ndsg9+yQLVsV5UpXDCZtkTHHIBz9rfBifus/ZRTvtC5NDrYKGEnl8beyvMa7wkYWNw
	 38/iTXJNCpiQitcGFn1UAz7XYWPLC8u3OyvYeq+SVZycVZA3ISAACKWnKoVDZbPRR0
	 KyBGIyGMZXdjFqAOjxkERw4EFdGpPKMR8Qcyb3mWcDKsKHoz3wLtCq2ezei4XXiZIQ
	 aoTmkUwI9sZiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52E96ECAAD5
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 09:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166193825333.7897.7061657230473434265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3158966b248904f02403aed216b03423d283bb246cbad37dc852e77d90b127be
Date: Wed, 31 Aug 2022 09:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661938253
