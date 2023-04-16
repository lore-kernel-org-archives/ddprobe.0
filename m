Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3239B7B
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 05:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2985C433EF
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 05:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681622105;
	bh=OPMnvsfiLpBnY6JQ9UKFm6zF7o4EMQGpTxdZbXfpcQY=;
	h=To:Subject:From:Date:From;
	b=Gd3tTltBEcF2PgTQuqfCFUFJTYikBceTfexZyJW67Vn466EsdtG9a21i8CqLILucg
	 JWqF/jSnquXrKO1O9+DdWl2QibwOHlz//OFGds5NTB4bEVBWH6wh1uxtsaRgqW1OmV
	 hAo5Y8FSUcuuVN2n0f2WiH9gKB9oPsx7L4hfosVTguiXwouGQI2/4XTMTGzXJORggz
	 E8/zF68MghYG3W5ls2zzDKtlSFtyIXI8U8RUSJEZSsZpFL9BRhYb+KsY0d4iiHod71
	 gn3kQlJTGutw/zab22pu7njaLSFmdUlPhquysegUNTYL5CZebzpY0kfqdE5mnigrUi
	 aybHMl6r+hO7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B602CC77B76
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 05:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168162210572.17691.16066249429674358398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eefa95a4fca62ab0b09d3b90df5fd4028ffa1103ba00a0d4232ae58ba4e63bc6
Date: Sun, 16 Apr 2023 05:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681622105
