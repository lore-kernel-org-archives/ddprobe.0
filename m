Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F20720E3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 11:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D16BAC433D2
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 11:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675078385;
	bh=iazpra3VXm7gTTXq2OXBxvE8xjLtMXpF4L4en8o1hB8=;
	h=To:Subject:From:Date:From;
	b=MfYG4RseUj9IBNWNFNIHERLtxe2R0KeKQKaRBnv/32i4WaB51N35IFI0/zS/PE74e
	 gdlX//WmmFeAHgVPkCcyzjEcU/UhnUL+CRVFZMEBxO68sXt8KFRjqFxywQMZGCb2uk
	 dC1bxTK2Byg19soatKrqYvLstWAdVwDoQmxDW54p2kOKXiPKjoNKudu0V3xFshsIHC
	 GIB19DZlUJrfFO/6AaQYVktehwmwxK4PmcoWrIM2IyDYd4YVdoKNsr1WRzr11m9DXB
	 T7Ubs0k1BddLRA5eGAC53NiZIAatmlGubb9kgk6TRKrLlNvtP/clYzGgL0Hpdpqj22
	 Oo5jCMmyu7Inw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA541C54EED
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 11:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167507838575.6293.15704856560600381577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e11680b54262e463d713cb501e041cab40fc87c6f165fa657bd15fddc57cab5
Date: Mon, 30 Jan 2023 11:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675078385
