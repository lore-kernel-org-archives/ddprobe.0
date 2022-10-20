Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C11B77B
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 11:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66F84C433D6
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 11:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666266653;
	bh=owM6H97fOYThOrc1Mjw7GCesXVE8xsvWlHO80Dl4kqI=;
	h=To:Subject:From:Date:From;
	b=pcejuX/M6pGbN3n/ui3sDQNsSxADulP+SmZvnGGcokBjbul8aAkoI0OH2rcIcBFDB
	 GbPGLTm9cDASlvxCPSGJHOtQHXOT4IWsGYUpulmL/WymnE0GTvLDMk+7Ddeha5yxT0
	 mRFW3NSjpCEKULPoHf6gWnzYD+B/bghXfT7bG1dDM6ew2YcpHMwYGvQhWgfDa03RFd
	 zqHPvOc8LuIEGA5TgOsTenRGwiLWIa98ZVkCI+77qk7w4aZ6q1OGOzHyQr8Vt2Sv4R
	 sxWWRITWUDZFELTSMsTlNviEc/iqNhQLgNKFno7zwzpj9IsrwYpMSnXux+hlv3ERPN
	 LFsFjftSyYSqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 511BCC433FE
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 11:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166626665332.1667.16145529926742589357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49b0dd1a1bd15f177c250d6a6a27700e11c22733b77a65e92b056b1dc8c1238b
Date: Thu, 20 Oct 2022 11:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666266653
