Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEB8C748E
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 17:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FC5BC433D7
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 17:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666719653;
	bh=LbPBi7L30DbGoniqE2yT5slfuM7GUtF4MoL94QnCuSI=;
	h=To:Subject:From:Date:From;
	b=iZkuU67BRugDmJgAR2BZeL5MNJhtMnCANZydIqq8YtOwWpzE0axhuEU4l2Htxoa3M
	 ydXZJqsb0+qbk4qh3v2Tz0zyugI59Q+K76AWDfLzrj2xUEToAoQs5//G+FMV7hqNmh
	 GAkhddbD/caoT5CJ4mjo1uw5l/7FjIHa6MYcOTcMmsMJWFSSyLhj+0zk3o4toX6as0
	 XbtU1Z4xaNbSctGl51/sAyO0bqZO4B5rq7Mp1y1hfkhnm7/Tva7tsawVVQWRxhQ5sB
	 rFgZPcpxW6sj6+bFNIlmHXK4LPKj0kLiFg+CYb9nA+Vg1pST3mxWNW8sLhwLpjJCZh
	 k8n0GaeOHZqaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57A08FA373E
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 17:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166671965333.2428.13711944361198606187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8648b50fe627e8f61bc1360ea1088f68ca0b063ebb876639d1976c2ee40253bb
Date: Tue, 25 Oct 2022 17:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666719653
