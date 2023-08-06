Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A5B217F6
	for <ddprobe@lists.linux.dev>; Sun,  6 Aug 2023 04:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 021C7C433C7
	for <ddprobe@lists.linux.dev>; Sun,  6 Aug 2023 04:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691295789;
	bh=iHcxw/V3tg9sT+nMtUO3f0KuwSwEFLR+g4dGtY68DjA=;
	h=To:Subject:From:Date:From;
	b=nw83VxvrizWNes4EMwVbQgp34SS4Y0zwb43Ld7EzV/RHwbcpSPAbc9LYnv5iqf0pr
	 oEkYZgn+SophA1Wo4EymcD+hGyq65Fa5xVSa1LmwwHY8raI0noRHz6VmVApVSiuWZk
	 lALh7kOzbNrZ8G0AlD4zem6UoSE+aEsr2bh777fOQRuuxE9N/zVu+4GEYjmJ54K7fT
	 OmLDeZ1GLy81P93q/9T5sS6lj/vI6vFj+fjp4mBalaG5uobLXs7bkHAprZPCOUjU7D
	 q1ImxRx9JnkgluK3Kq5J4bJduc5cUIqK8DfppukM/JQ2WAFRv2/BFIhREVK3z1NiOO
	 hO2SzumQP6Q/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD563C0015E
	for <ddprobe@lists.linux.dev>; Sun,  6 Aug 2023 04:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169129578880.9968.7686979417623740100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7a5ffd0dba9dcd7d66ddaf58ded9f0fdeb0ef8977ff8eca9e312ee976c5e962
Date: Sun, 06 Aug 2023 04:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691295788
