Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1CE75789B
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 16:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="THkaN03B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77AF7C433C8
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 16:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700669296;
	bh=iGhyyCE6Uwv4MD6fpcB+6DjaXF8YS5M8xD14LCdUOys=;
	h=To:Subject:From:Date:From;
	b=THkaN03Bw8cn/Jz4eL3Lkk9cyFCFOZG/amODbekeUyWXkJ1ZQu5WzdiRSFRPmRAtQ
	 ZWerXZNmayzqpk3CJNL3K+TUXRTyOx+wsj8irjgbqAq7qH377FpuGO7m91FCGhsA3M
	 z1cgScjR5qvNUfYdhsCBCPgETBsHg3s6LCRU7iIIJLKEtQddqsrd8ffgE2ZRCMGowD
	 3aupN70Mu1PYBzrTiLjUJKkfmLQeREMwsKIBWCBTOw2N18e42KaJl/X/9jwYBT1dPv
	 dbzPIop4ilqHWSk5HMXkcz9CeAdPckn9VktCUf4fgmD6OFp2B+r54RmDmxIAIGdIlZ
	 P60GvnAKxFrxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5ECE0C61D97
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 16:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170066929638.15193.12088414854216534060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 186e9f9cb7615bc5f2aa673abbf27578f0e9e959d5d9a02537af23f09ef250a7
Date: Wed, 22 Nov 2023 16:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700669296
