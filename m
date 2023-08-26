Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B04037D
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 05:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFE1FC433C7
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 05:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693026248;
	bh=mAKTCY7OyJFfmTYPQ2tJ7BNoDCAEb01K2P1gGbgemHs=;
	h=To:Subject:From:Date:From;
	b=GXDdTNDBejFEfTIr+SF260K9q9lpXhw9yATBWER2AaLECTXj0KoTGP8eWkXVAV6jt
	 p1ajN4q5T24V1Yg2RPcI6sACTe5b7m2NuWOMp1QsWm1FUuUnVojvUXZtehiCGMwnJT
	 UN3yLhES3CphGWsoNDa30w28Q2aSh2qho9TDSU2GE28mP+LghVwYX6mPDmJuv0ODYe
	 gfFCRHMfomMMW3UGnsTBOIyGo54wr/P2a4Bpjwf3Bg4EvWMppuLqETdn/G/AlNT6xG
	 AUnT8a36raO9nV23M5WWCZcPuDPYCiW/AbWgD3kXdp2J9otCDi8LsrowhkQEyCK4+e
	 3GCgK6+JdhkKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADA9EC83F11
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 05:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169302624868.13755.6713077840615475370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30732950c9331bde827338f718a4bc335ac75ffaeceb6ed0bfd7246240883900
Date: Sat, 26 Aug 2023 05:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693026248
