Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72BF91FD5
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 11:19:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1AA9C433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 11:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686395946;
	bh=MxDeTGGU1V/YsCzRWT0Rhu0gi3uC24vg9QPFfzJ5L4Q=;
	h=To:Subject:From:Date:From;
	b=R6JXVtyIbcF8x9vUDtxgv1mjENnBi5ypHFO3Zo/+AswFxe+COqeuf+dxdRM/qz95X
	 D/ZRT4eZWsMGUosKwvgb0UJ6gUoSbi2ueD+eKM4Xuc45EKxtOxWnDMhcLemSeCeuCR
	 rZiHyzZEbozvyCDRQTT6ZJVdnq3nyhDuAKMxvpbV1RUzNQjo0uoYNcjcWJaaHTWH1z
	 kInIT2Wrkx+i31KyphLmgCm+w1tbHlrcPVnJqU+HbtcFp2z/r9RF0ZoYxDAZW1gSqi
	 YmE47GoW2ECq197scLWS4hqkdDrk9oqiu3H4QiH4XfZ4TdhODnB4cXL6eHAYj2f+bu
	 jP0h9lkU5x3Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF4D9C77B7A
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 11:19:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168639594577.17614.4733145742631577557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc10d81cf8251894605c8eb19a8337c5b615946732b999a8ff7704a596d09723
Date: Sat, 10 Jun 2023 11:19:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686395945
