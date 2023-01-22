Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20B072115
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 22:12:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD2A5C433EF
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 22:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674425525;
	bh=uhOvcpbTXPDVayWPzTCOQs4BnMrJR6ZLa5r7y0KkcDE=;
	h=To:Subject:From:Date:From;
	b=irgva7mMGrWZPJmmbplGmIpYINq8Ptfs3+VK6LGrgodtqx1KwN682FwrD6ozeSXdf
	 Eb68MqWNgLay/UemGAKGUPMGVQdiAwh5zTyrDd6DYCmMPf5+/NyAxNKBkzFhjMePvf
	 t5LKBbX9uraN63OIgWrgUOiaYr6c1OYRmn5sXl8t+IOmFZa3+Kc79Bi/B9AUkt3d4W
	 S16mLOz8fm3SsB4uQIY4hvUZ/faUfVuBRaLg93CYpKFrcLzLX48glIwiN4h4D66Mh4
	 FTq76v3sWN8eaYSq4AZRa8jKX1/NAUARDpyNASZ1aXAvv3ddYa9x1oB5rL+cMTc+q1
	 6AwBBCHfxVFfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1F75C25B4E
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 22:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167442552572.17619.8509110393952972053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0d8d40bcdfe2675dc47544c7d91456667434a4815314d350a01fdd9a49274b2
Date: Sun, 22 Jan 2023 22:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674425525
