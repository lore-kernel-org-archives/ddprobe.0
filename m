Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C597B7C
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 06:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CBE9C433D6
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 06:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668753054;
	bh=K3xvL6G0/jQfEC+gERA0tiDlfW45uQZxy58MYIDP/ro=;
	h=To:Subject:From:Date:From;
	b=ryZfPzBeflb9fnnAe/fyWcftZ+Ug7U9I/LJ8Yq9wyT1zgA/USiZSx3tf7R91+w7rw
	 KtE6OmSt/xUie/tsTIbzWjJzqHT1uBghfYfxpz7G2xvfLxpr6LQsKPAFBW8mqXHCEb
	 Mr8g82Kfz9Smx3RiELUP28QCBKCEuNldjqHL/v22bE8+lxSsSvCxY5aNrWRn54RRov
	 eS2gaNRop0o/yZrAPRo/xy1nokZY9uEMJ4iCG9EYVWOO7mt7rhU2kXDe3Cw+lG/nEI
	 DVZGLgnoNSN7GN1Pw9PgoZ961MaLjxwLNZO4NoFURswL2wIXlioB7Z27x4kwL5ZjGg
	 Ejf2NIphEG7+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57FAAC433FE
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 06:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166875305434.10367.1628414025824651589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e9be44d584927ded64eaa3c6011f9307777cbf84243f976fd4312ff1b89a3e3
Date: Fri, 18 Nov 2022 06:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668753054
