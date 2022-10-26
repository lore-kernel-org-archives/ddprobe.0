Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3E7E7B
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 00:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 767E0C433C1
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 00:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666743053;
	bh=0Hxgh9PK9B/RK5g29nmHFAwMNG5FNzw9cuNByckeCI4=;
	h=To:Subject:From:Date:From;
	b=HgMlKrq76hJZVQziCapelSyhdgtCWBYbBtP+SkHuCCtliR3Jwtjia97W074ga0VWU
	 G8IqeLVA5H959v0IFRfgG2ZlFfE4KVWcMtXL3Uxlb7j4XmnAWf2heikJbRJaXriubP
	 HByhh27sJAFRHa3XKwauiiIbFgGGtCyqE4uFxMyzPl3F/4eEkGkFXsOmDbBssRted+
	 M9ZxOVmhjeLxLyofSJfAj7QbewZlVSAcDTwgYhNvoTEdMvr/nAw5RT3SUPNCuYkGVz
	 SgUMYXgXr5zI1M0E7pSCtS56r5RmlY28uC4PJDwloZCD5TE6Vf5D9Qwv5hkIsqZmVe
	 +IUVyntsbImZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AFEEC38A2D
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 00:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166674305336.18432.17565232258045876758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b171129090be03ee2e14187a4cf580e2113e2286ffaae5fe2422c4f20680bde
Date: Wed, 26 Oct 2022 00:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666743053
