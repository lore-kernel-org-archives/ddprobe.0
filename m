Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADFD74434
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 20:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69EF3C433C1
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 20:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663966253;
	bh=t5ZmZMEJiEEIsPtoR4t4cenndHyRRx8GxDN6UoNtsIQ=;
	h=To:Subject:From:Date:From;
	b=Zk3LbzBfitXvQ+MBlfn3HP/HdPFxQZytpCR8ZZnh+/cwaaGG+BCU1+n5yoiTf+7or
	 xvETkqt8dZnrO6naGFbJWCH0KSpnrEdfOPGkaXWpujjBV7AvZ1hvGLAppSBfyS6n/X
	 XBe7xVJypQometJ6wtDUAGMq78m7ZlCGRrkX/8owwYA+CIOW93OpvEYpkg+fKJowah
	 ycmdi4Re7gCmusDvhm4FMsL0l4yBHFM8NyQeOfPpxFbeoDEbL39ZDwpjQDRKCDacHW
	 uKV1aHP1x8ipdydpwaGXTuqzhgFYXXC/aGKxaKVVaAcx2kYi1s7kDIiuw9x33c5jmU
	 abKtGVj9szoVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52F5CC04A95
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 20:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166396625333.23514.8334060255889023835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f16e504abb5ffe15be35c0e1778f4e09efd0721dbd2f14dae932e57c94c8a4f3
Date: Fri, 23 Sep 2022 20:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663966253
