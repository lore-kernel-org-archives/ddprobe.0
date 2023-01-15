Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAD147B
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 21:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E319C433EF
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 21:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673818887;
	bh=ioZcf+0djkBe2Jsu+qc0vtYh2GRYp7d9ji5r4ePUN1s=;
	h=To:Subject:From:Date:From;
	b=Nwb0oA+GaTSv3NCLK1vcEqU2aWvlyhDI9TCb71i1U/QsayVS6n/gAI1cwrGEKOuV3
	 NkjkSUynn+E83Us6YwjvWzqGeHE/DDe0tUdQ2NGrU9Ivf2wospbhOMR9CD766XItvm
	 4XUloOxr3pDZmSPV9/L6GKewUDZUad+OVVJrdjTE4NxryhSFC58w8/H5PS8nrkr1Pt
	 g0Gs6Ezv7RSPvs4re9jwhrpD1enIkqjx/A16BmssvMdGvmOJXj5zQ7HuRIh/XhB7sY
	 q1AQB2w/9QQ3mbHCqNAMBkgGFkIuNYzyj9g+l3EIY9x/AyW37oRDp0o88tg99W/FTL
	 HPK1XnMAQLWBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65041C46467
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 21:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167381888740.4643.6312141849087918629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50f9e96fe216849eb08fc708314e7d85bccc651613c76e616fdaf0f2b9c03a68
Date: Sun, 15 Jan 2023 21:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673818887
