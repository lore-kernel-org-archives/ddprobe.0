Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 674C5BE60
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 12:12:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFB4AC433C7
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 12:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690373528;
	bh=gC0sLlL5U4TOfGWsKKTAj7etv+SNpCVQ8WV1IHzZ7NM=;
	h=To:Subject:From:Date:From;
	b=YARwuBTAdRry7tOVhD0z1wV5zZCfftOiqoVJKhU34XkS43I6Dhnxg2XNhfgqh9jCv
	 OKMFtxBdHNB79kwagDWTiAXHlzXZOc5Cxbh2zUlcQcenQy/UutfrXpizjc92q/NKWO
	 NcQDCyPVmi/1z5PjIXglRYK9lESc8exnpzMu7Rkd13foqOeAzircjICv31fB9K4tpM
	 vAQnPMCTHSRtJlLiNHDbLmgrRJUNdW6GaTgwra388vmmFd6TAoZQcj92K0GIY20vkC
	 UkzeeCW9a1al2lqQF8K6R6YYLR3m5wm/CM+gPYecGlHL8rf3MxmtOarGAwLVwbfz3w
	 5DgiGsFmyF85A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD943C001B0
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 12:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169037352868.22061.1939909582565171016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef3f8f8a4708ec8ddce72a3919fa49ddc5f2bdd6cd2a2c81aab5263331f2112f
Date: Wed, 26 Jul 2023 12:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690373528
