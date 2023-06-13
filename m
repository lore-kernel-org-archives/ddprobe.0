Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A266E33E3
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 16:37:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1060AC433D9
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 16:37:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686674229;
	bh=gMQyjD0D5WMYzpbPLNqw1GSaqfAnPDtUtmTrSyV0odc=;
	h=To:Subject:From:Date:From;
	b=sbwXKR6//CRU8zB54mMsHCo4/tgFPMBk/lc09Z998N/JpMvUnicHnuMw1bmoRHau6
	 zeDVsCijRzrHGZcA6UJO9gfKh7TY208bEwVu8tVtsrLdauno+aEmNAEYm4Dj2c9a86
	 UcghA/G6k3IM3MdKPxWoEQZPm8begp5BK1Gntz3NzEJMRg0pmsOkP7mXFjPZm8ScV0
	 jq9ouGjSi8OSfkUTl1Sk3g8hQqPcsE0gaE+2oby/PGp171xqGIg5wEYozyBAwoQ+Q6
	 D5BMRFLF2vH2IrGnQiF+T+/FJVEFWZ4dlGAtRKXQwfHPDBtPB/4Nh4eWjnEN/RK2Ki
	 uqdenTLWOi5ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E216BEB64D7
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 16:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168667422891.6151.76472417173444445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f67a82260f0b64ea6f41243d654f9ca03eb9a22547857922680a41f25049da36
Date: Tue, 13 Jun 2023 16:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686674228
