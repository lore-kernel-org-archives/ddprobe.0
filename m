Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1DE84C7A
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 19:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69F73C433D6
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 19:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664394653;
	bh=W/hgdmf32wJpqY5YnbrMxiLbzH5McBHIkRgJlpPL2DQ=;
	h=To:Subject:From:Date:From;
	b=rsbED+hWZOZWXYc+med8GJy136p+ZLsI88RWRnaK7q1cXCmq2/JJP8WYTPx9ckPG6
	 5YrsfL/Gx2IJMofImqa6eljknHEx3nvLzt7InSU94qzrLmTyrcAcrvMgTOuLAz5CV6
	 q0x68vH1L/rdC3WYOr+xUcixL2ZAGjRz6VYTW73zQW4iMdMd2Kq/IY19Rvm31SxEdT
	 vxopkNGh4+RINKU8JtxOdZPPtmnktBMrpzF5cPIlcT2zxjJ6qNDZc5ZFPTwexqH9Rr
	 bY+X9UamY7mq5CiAscaSot6t9iK7UqeRuFdANyzvHkAjZkm5zhX09W0RH5QBeBMNfU
	 wlYjDRn9lXM1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 548F7C32771
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 19:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166439465331.6043.2924390814731088161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06722ecfb47a5edd6e4f876a2cf39a6556aa8bc95d088a828658233633f7a21d
Date: Wed, 28 Sep 2022 19:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664394653
