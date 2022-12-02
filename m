Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBC8E186B
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 07:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7165AC433C1
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 07:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669965654;
	bh=QLfaCP0tWsj7ZLGH6rCB7MUXTjDVtUMfpUeXX26jNTs=;
	h=To:Subject:From:Date:From;
	b=tB8u2gtc5GMbwmqVlEnMlMuIlOq5/3kfuQy4CUKbUNKHZVmF/PogiWOYrxTYSyxkz
	 CzdGKoT3XFGxjg7pDvDcmtVz+aDBou8gt76QwwKMp9jNrYJy1LNE93Q9Ed2lGWm/ZN
	 Y+pT7zXeXjUQtYS4Q7hGh5KFZgOW2glTihS/PGsZcv8Ge+SzZlLLdCyjzb1t1HXZcE
	 1waz7/EKG2ux3gVoDp68WY1d/J16L+bEIFsgm3z+mm361BN5NFkOw8lLZVWMPNCdpt
	 CzkGLQ/AXbBhYD/dt7xE91a+VVmPeBvSkxrh2Lk5rbo7AVwXpSFtQ0UrIzWocvhwxP
	 6z6RFSR9BcXrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 525ABC4332F
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 07:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166996565432.23432.16213170747857759713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1350cac22f984fe7a00bbf1a5ae006a088e7b3278d97197e861b4e0965ff211b
Date: Fri, 02 Dec 2022 07:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669965654
