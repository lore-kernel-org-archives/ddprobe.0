Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB630371
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 03:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82318C433EF
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 03:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672025487;
	bh=h0lgxtfBJfQ57qRVLg6K3k9eTcBxcstXX0w62UrzVTE=;
	h=To:Subject:From:Date:From;
	b=qMrMSi+EbGoq8fy1KWoZo/3gCE01Vjz+h09Fg3ReLW+6Sx01nLHsC0X9HLbZvx7v0
	 TVuMBnxKH8jcRU8trkZ5j1T7pGjEnDkzUyhkzBUopG8tCGYzhzTaDRrFN3FBVItPxo
	 v5RR5DX8oegWzCYXcL34j75mZviRzdyIWN3fh1rrO862Qx/oW2bz8fekgqgnXj/EMk
	 Y4mFT4+HJfnH1p/jFWu28+0hRfxt9gXcpjIkA3tsm/jb0n2yNtIofxSL088K5pajjp
	 l9aMxxf/i/jyNDaaqispbF8Oyge6c/0pu021qnXFtMxQ+EubUssnicXAb9GnnYulfz
	 2EGHcrO4oSNug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65203C4167B
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 03:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167202548740.8411.18167876193371844114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b78594f1f6acc901d7caff2d51fbcb09014e96ecc475e3941861818772ea167
Date: Mon, 26 Dec 2022 03:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672025487
