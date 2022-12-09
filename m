Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7DB87E8
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 03:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8BC1EC433EF
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 03:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670557287;
	bh=4sXH45Dc4DXD26XavzpPmlTVGLk6LH8MTb4xHrgOKeE=;
	h=To:Subject:From:Date:From;
	b=Kqiu9UTNnZCyglP5xnhvJEYpS8Aemdb921XeetjW32p96zGgi6unh4GCikgrJR3kA
	 nNhLVcdKFylDkggX4e2/Jb3u2hvgLFuZ5OnEhVf9HbI9HIELHDImzt4pNwpzFCF1VS
	 G48m5jcNNW2Oia+DXd+f6JhCwCdX2WxRAM1KfaQV0bGBTGjxPGKxxEniqG8uI/7/pv
	 vdCuWBD0k0jX44cfGgQPtyXkWRgEjWkEmhkmCt0OJ9vafrDXkZjnC815+v8aeUmCf6
	 N9z+jg5Qrfe+Nhjut7p7xbK7M5QVWUf0YcKBMvizLabcwnwAFU142c/wgjKxjp2pro
	 aJQBUWjCII9QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A6E2C4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 03:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167055728742.31636.5115830096456362209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1eba4bd9a7a7ae8fa4cbffc9f925f127f6e7163a47a7a2a8512338d2266e908f
Date: Fri, 09 Dec 2022 03:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670557287
