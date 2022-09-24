Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCF947B
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 22:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DBE8C433D6
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 22:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664058053;
	bh=A4WRNqdBZ/7fFC0okclZTn/w0xwZW8jI+CG1gujslMo=;
	h=To:Subject:From:Date:From;
	b=T/Di5+HTeewfJaVKIFGSwLiuT6IYlzJMe1S0WzI/gWLRNiZP5nrbz2xq0rTKHKaYU
	 sISbY5Vu0ytiRHbE27lo4mAXVxKy83q8bjlffstMxo8bfc8LGj9QquQmjITlciwlCm
	 MjCLhe7uQ2ne9w/Yrg+U3LNlmcval/tAZsoq2awqddsWSUKS2mtEisRKEAsOC8gTso
	 mMWPvCK2KZlHYxCpxeoobM0S27RwRWCT1pB6xOPU0Sv24LYdpMddOlZXaof47xt+Ch
	 3dGUDpy3lN9gxtlLFHh/Km21sEfbj9usWWEuzU17827nX2oTZm8rLCunuSoMRaL8jx
	 uL9Wg/BT7BeEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 538ABC07E9D
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 22:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166405805333.29686.1066980972821748135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a33caff52f215644b480cc98435aa5d698d56255327fd2c5a0e206e34ed833ef
Date: Sat, 24 Sep 2022 22:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664058053
