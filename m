Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D01A28FE
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 21:51:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4604C433EF
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 21:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681077065;
	bh=pV8S6yT02aXBZq2bTGRoS7NSjR/T62DQXajX8q0QZqs=;
	h=To:Subject:From:Date:From;
	b=hv+7e08s1ZtiSDejQq6flu2LblhTFCPEobB6Q45Djfwvf386QrOKXNHd7kglg3IPB
	 MEjNfZdGrzan23sZ7jerbClOca5YQ22iyYjdxIryALVhcl1Zi+sBTNtXvrp5tJOGCI
	 dY4PCJkhn9KRd//ksO742u8sA44eiXTbnItknfcuwehPWgibThMfGrvVBwaBKMsAC3
	 /wpQVF2jJpy+BlS4BVXH1TC/iIP4T3yEVwsdx5+sbB+/NcpatVDDL5zMK+X7xp+ukG
	 SVKjZgHRMFpiwPSsHMtVg1MJVTxOZjfKniEH2yDRVOVwlCeSag0t4BEOOaqRf+fAZA
	 3zLRs/CRnyfXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C585CC77B61
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 21:51:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168107706578.4149.3542026270018897605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ed4d6ecf0264b932b5a608c6bd8b7f61338aa989a7ced26377a9839a4d0e2ee
Date: Sun, 09 Apr 2023 21:51:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681077065
