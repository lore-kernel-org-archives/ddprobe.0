Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A90417C6
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 02:37:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBA75C433D2
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 02:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678761425;
	bh=aiuE4ScwNzgOIDc/ty6uOGf+daXXPMjU7GjeZC/fKD0=;
	h=To:Subject:From:Date:From;
	b=DGlLLGa8kVlgebgk5SnhHrBR/xD5AXwHtieeYCAVyoA8DQ8fzqy+obaI+A25AauVp
	 z5XFCSxbSj0d0a3ieE1YsbOGSAAcvjEMDf1T4Y7Zq8tsMLSx+lL+DebWWlvHODZbv2
	 uNVkH2I//S/TzzaAh1fxz7kqKsmCitdC8gshGtQ2pcuEk/XCaH/wmdR02J3ZtxADXh
	 fgoFvW7Hl+8/8NxrEAmAWkW/Z1C+jQ4a3x6ih6aayFzdojxbMGQAw8GdCo974Z19kx
	 /Ekie8cIvXa06xhJM5BC3AAKHWTnN34uEaW63yXGoK1CQlH/LJkTrhJN+0B5OnwNMo
	 ttcY94Olt8yhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2F4DC6FD19
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 02:37:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167876142572.19573.13388102897407634748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73e57cf4ff494e7004dc32997d34ae9c9eb0d133de092c87ae6b4baf0732fe45
Date: Tue, 14 Mar 2023 02:37:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678761425
