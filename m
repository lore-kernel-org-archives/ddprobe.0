Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D18A189A7
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 17:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82339C433D6
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 17:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662572453;
	bh=nH34IOMdymsZephq8xIUNfQ+XDTb6+VvXBVJZ6o3Fdc=;
	h=To:Subject:From:Date:From;
	b=h3HWw3hozJ+S0N0EfYdAEvmPsH9bNUcu9Zpi/+OfTokpcUDUcmmCS9GUkNFWHOU07
	 8C8xqbrvlNlVA2kIU/qZVaIGK7CAJL5f/qQKxnoUWIz5DKlZiXEloTScK/zIP0N1Ty
	 Z034uzR5zjSHrv2Afd+mIdVKw8cQUwcD69cjM3vo1pkDDOFB8mti4qbDr2aJGhqJnl
	 UqJ0n7mpedzR8uBFZdEec1mlDwbCWVMyjAuHddrMQdgb4nnsiMdpMKOBIymUnDuHt2
	 X3nO0LZ8WVlyHfi5F4CHCF2i2vYQeADoC8yZu3F21PWilkMmLoTYU9WQOon2PofbeA
	 fo6ewqkjh3cTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69D33C54EE9
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 17:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166257245342.29362.10949471607654321159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61d796b6f6aedf91c2d1c239a3dc2278c4a5772f80a9ead7d0304fb591a41af8
Date: Wed, 07 Sep 2022 17:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662572453
