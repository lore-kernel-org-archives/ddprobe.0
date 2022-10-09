Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4AC51389
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 03:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71C46C433C1
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 03:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665284453;
	bh=JH75tBYPPB9QVYn0UXsSLm8SEpTjv3DAptjiX8KT3tQ=;
	h=To:Subject:From:Date:From;
	b=U2AZjOULKAtU9fNwKr+qe8agEBfaRm3VDjeDV71Lsqexo8YpC7iUjrj+4jxg+Bx0r
	 LhHJ8rDTMk028iWoARLLgwmbxGKKxZhH5L+2s8XGfo9TGb+45f9qcmFubXDDVN0G7M
	 yWKq7rAoNE+swfONjtC1mYBnxMz0EipxaPkdBs0AJaAzg/kwu7g+Ho2OEGXi5HFmPO
	 568mD3kjUEl+VvyOgHQSTIZfXgvQIGR/LXHYSzp14AFlzG9sefigI8vm1OU5TDQ9+W
	 DPUj0ylHQddY+AFtRJjJxMiq2p+hUiGZmUzGmZRSVsyx2nXUSmbw2D6dhoZbQ0J9eM
	 EL20rrYjJnuug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 540BDC433FE
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 03:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166528445332.4224.17828611007175854385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 499085c1edf7234a0f22adcb70db80ea637759c8447cf718fb20dc93ced9420a
Date: Sun, 09 Oct 2022 03:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665284453
